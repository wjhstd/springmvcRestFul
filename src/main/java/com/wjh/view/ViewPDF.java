package com.wjh.view;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfWriter;
import com.wjh.bean.Article;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class ViewPDF extends AbstractPdfView {

    @SuppressWarnings("unchecked")
    @Override
    protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
                                    HttpServletRequest request, HttpServletResponse response) throws Exception {
//        String fileName = "用户信息.pdf"; // 设置response方式,使执行此controller时候自动出现下载页面,而非直接使用excel打开
//        response.setCharacterEncoding("UTF-8");
//        response.setContentType("application/octet-stream");
//        response.setHeader("Content-Disposition",
//                "attachment; filename=" + new String(fileName.getBytes(), "iso8859-1"));
        List<Article> article = (List<Article>) model.get("articles");
//        BaseFont bfChinese = BaseFont.createFont("C://Windows//Fonts//simfang.ttf", BaseFont.IDENTITY_H,
//                BaseFont.NOT_EMBEDDED);
//
//        com.lowagie.text.Font FontChinese = new com.lowagie.text.Font(bfChinese, 12, com.lowagie.text.Font.NORMAL);

        for (int i = 0; i < article.size(); i++) {
//            User user = userList.get(i);
//            String value = "ID: " + user.getId() + "姓名: " + user.getName() + ",邮箱: " + user.getEmail() + ",密码: "
//                    + user.getPassword();
            Article article1=article.get(i);
            String str="标题: "+article1.getTitle()+"---正文: "+article1.getContent();
            document.add(new Paragraph(str));
        }
    }
}