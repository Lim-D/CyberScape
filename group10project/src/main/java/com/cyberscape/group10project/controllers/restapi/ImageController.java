package com.cyberscape.group10project.controllers.restapi;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;



import java.io.IOException;
import java.io.InputStream;

@Controller
public class ImageController {

    private final ServletContext servletContext;

    @Autowired
    public ImageController(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    @GetMapping("/images/{imageName:.+}")
    @ResponseBody
    public void getImage(@PathVariable String imageName, HttpServletResponse response) throws IOException {
        String imagePath = "/WEB-INF/img/" + imageName;
        InputStream inputStream = servletContext.getResourceAsStream(imagePath);

        if (inputStream == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        response.setContentType(servletContext.getMimeType(imagePath));
        StreamUtils.copy(inputStream, response.getOutputStream());
    }
}
