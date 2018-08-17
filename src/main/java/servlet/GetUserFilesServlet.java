package servlet;

import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(urlPatterns = "/getUserFiles")

public class GetUserFilesServlet extends HttpServlet {

    private static final String IMAGE_ROOT_DIR = "C:\\Users\\Karen\\IdeaProjects\\MimityElectronics\\src\\main\\resources\\pictures\\userPictures";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pictureName = req.getParameter("pictureName");
        String picture = IMAGE_ROOT_DIR + File.separator + pictureName;

        try(InputStream inputStream = new FileInputStream(picture);
        OutputStream outputStream = resp.getOutputStream()){
            byte[] buffer = new byte[4096];

            int numBytesRead;
           while ((numBytesRead = inputStream.read(buffer))> 0){
               outputStream.write(buffer,0,numBytesRead);
           }
        }
    }
}
