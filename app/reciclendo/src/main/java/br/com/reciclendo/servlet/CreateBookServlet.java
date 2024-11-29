package br.com.reciclendo.servlet;

import br.com.reciclendo.dao.BookDao;
import br.com.reciclendo.model.Book;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent;

@WebServlet("/create-book")
public class CreateBookServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        Map<String, String> parameters = uploadImage(req);

        String id = parameters.get("id");
        String title = parameters.get("book-title");
        String image = parameters.get("image");
        String author = parameters.get("book-author");
        String des = parameters.get("book-des");
        String gender = parameters.get("book-gender");
        double price = Double.parseDouble(parameters.get("book-price"));
        String isbn10 = parameters.get("book-isbn10");
        String isbn13 = parameters.get("book-isbn13");
        String editor = parameters.get("book-editor");

        BookDao bookDao = new BookDao();
        Book book = new Book(id, title, image, author, des, gender, price, isbn10, isbn13, editor);

        if (id.isBlank()) {

            bookDao.createBook(book);

        } else {

            bookDao.updateBooks(book);
        }

        resp.sendRedirect("/admin/dashboard.jsp");

    }

    // Vai fazer o start no processo de upload
    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) {

        Map<String, String> parameters = new HashMap<>();

        // Verifica se é um formulário com upload de arquivo
        if (isMultipartContent(httpServletRequest)) {

            try {

                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();

                List<FileItem> fileItems = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);

                for (FileItem item : fileItems) {

                    checkFieldType(item, parameters);

                }

            } catch (Exception e) {

                parameters.put("image", "img/default-book.jpg");
            }

            return parameters;

        }

        return parameters;

    }

    // Metodo para verificar o tipo de arquivo da requisião e chamar o processUploadedFile
    private void checkFieldType(FileItem item, Map requestParameters) throws Exception {

        if (item.isFormField()) { // Verifica se é um campo de texto simples

            requestParameters.put(item.getFieldName(), item.getString());

        } else { // Se não for é um tipo file / arquivo

            String fileName = processUploadedFile(item);
            requestParameters.put("image", fileName);

        }
    }

    // Metodo de diretório onde o arquivo de imagem vai ser gravado
    private String processUploadedFile(FileItem fileItem) throws Exception {

        Long currentTime = new Date().getTime();

        String fileName = currentTime.toString().concat("-").concat(fileItem.getName().replace("-", ""));
        String filePath = this.getServletContext().getRealPath("img").concat(File.separator).concat(fileName);

        fileItem.write(new File(filePath));

        return fileName;

    }

}

