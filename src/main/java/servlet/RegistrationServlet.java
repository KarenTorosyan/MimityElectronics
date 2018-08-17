package servlet;

import manager.UserManager;
import model.User;
import model.UserType;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/registration")

public class RegistrationServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isMultiPart = ServletFileUpload.isMultipartContent(req);
        if(isMultiPart){
            DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
            diskFileItemFactory.setSizeThreshold(10);
            diskFileItemFactory.setRepository(new File(System.getProperty("java.io.tmpdir")));


            ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);

            try {
                List<FileItem> fileItems = upload.parseRequest(req);
                User user = (User) req.getSession().getAttribute("user");
                String name = "";
                String surname = "";
                String email = "";
                String password = "";
                String picture = "";
                for (FileItem fileItem : fileItems) {
                    if(fileItem.isFormField()){
                        if(fileItem.getFieldName().equals("name")){
                            name = fileItem.getString();
                        }else if(fileItem.getFieldName().equals("surname")){
                            surname = fileItem.getString();
                        }else if(fileItem.getFieldName().equals("email")){
                            email = fileItem.getString();
                        }else if(fileItem.getFieldName().equals("password")){
                            password = fileItem.getString();
                        }
                    }else{
                        File rootPath = new File("C:\\Users\\Karen\\IdeaProjects\\MimityElectronics\\src\\main\\resources\\pictures\\userPictures");
                        if(!rootPath.exists()){
                            rootPath.mkdirs();
                        }
                        picture = System.currentTimeMillis() + "_" + fileItem.getName();
                        fileItem.write(new File(rootPath,picture));
                    }
                }

                UserManager userManager = new UserManager();
                User user1 = User.builder()
                        .name(name)
                        .surname(surname)
                        .email(email)
                        .password(password)
                        .picture(picture)
                        .build();
                userManager.addUser(user1);
               resp.sendRedirect("/login.jsp");

            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }



    }
}
//        String name = req.getParameter("name");
//        String surname = req.getParameter("surname");
//        String email = req.getParameter("email");
//        String password = req.getParameter("password");
//
//        UserManager userManager = new UserManager();
//        userManager.addUser(User.builder()
//                .name(name)
//                .surname(surname)
//                .email(email)
//                .password(password)
//                .build());
//        resp.sendRedirect("/userHome");
//    }
//}
