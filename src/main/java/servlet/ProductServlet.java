package servlet;

import javafx.collections.transformation.FilteredList;
import manager.CategoryManager;
import manager.ProductManager;
import model.Category;
import model.Product;
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

@WebServlet(urlPatterns = "/addProduct")

public class ProductServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isMultiPart = ServletFileUpload.isMultipartContent(req);
        if (isMultiPart) {
            DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
            diskFileItemFactory.setSizeThreshold(10);
            diskFileItemFactory.setRepository(new File(System.getProperty("java.io.tmpdir")));

            ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

            try {
                List<FileItem> fileItems = servletFileUpload.parseRequest(req);
                Product product = (Product) req.getSession().getAttribute("product");
                String name = "";
                String description = "";
                String price = "";
                String picture = "";
                String category = "";
                for (FileItem fileItem : fileItems) {
                    if (fileItem.isFormField()) {
                        if (fileItem.getFieldName().equals("name")) {
                            name = fileItem.getString();
                        } else if (fileItem.getFieldName().equals("description")) {
                            description = fileItem.getString();
                        } else if (fileItem.getFieldName().equals("price")) {
                            price = fileItem.getString();
                        }else if(fileItem.getFieldName().equals("category")){
                            category = fileItem.getString();
                        }
                    } else {
                        File rootPath = new File("C:\\Users\\Karen\\IdeaProjects\\MimityElectronics\\src\\main\\resources\\pictures\\productPictures");
                        if (!rootPath.exists()) {
                            rootPath.mkdirs();
                        }
                        picture = System.currentTimeMillis() + "_" + fileItem.getName();
                        fileItem.write(new File(rootPath, picture));
                    }
                }

                CategoryManager categoryManager = new CategoryManager();
                Category category1 = categoryManager.getCategoryById(Long.parseLong(category));
                ProductManager productManager = new ProductManager();
                Product product1 = productManager.addProduct(Product.builder()
                        .name(name)
                        .description(description)
                        .price(Double.parseDouble(price))
                        .picture(picture)
                        .category(category1)
                        .build());
                productManager.addProduct(product1);
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (NullPointerException e) {
                e.printStackTrace();
                resp.sendRedirect("/adminHome");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
