package com.john.test.pdf;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import org.junit.Test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;

/**
 * @Project competition
 * @Created with IntelliJ IDEA.
 * @User: zhanghuan
 * @Author: 张桓
 * @Email: yz30.com@aliyun.com
 * @QQ: 248404941
 * @Date: 2018/5/21
 * @Time: 10:39
 * 　　　　　　　　　　　　　　　 _ooOoo_
 * 　　　　　　　　　　　　　　　o8888888o
 * 　　　　　　　　　　　　　　　88" . "88
 * 　　　　　　　　　　　　　　　(| -_- |)
 * 　　　　　　　　　　　　　　　 O\ = /O
 * 　　　　　　　　　　　　　 ____/`---'\____
 * 　　　　　　　　　　　　 .   ' \\| |// `.
 * 　　　　　　　　　　　　 / \\||| : |||// \
 * 　　　　　　　　　　　　/ _||||| -:- |||||- \
 * 　　　　　　　　　　　     | | \\\ - /// | |
 * 　　　　　　　　　　　　　| \_| ''\---/'' | |
 * 　　　　　　　　　　　　 \ .-\__ `-` ___/-. /
 * 　　　　　　　　　　 ___`. .' /--.--\ `. . __
 * 　　　　　　　　 ."" '< `.___\_<|>_/___.' >'"".
 * 　　　　　　　　| | : `- \`.;`\ _ /`;.`/ - ` : | |
 * 　　　　　　　　   \ \ `-. \_ __\ /__ _/ .-` / /
 * 　　　　　======`-.____`-.___\_____/___.-`____.-'======
 * 　　　　　　　　　　　　　　　 `=---='
 * 　　　　　 .............................................
 * 　　　　　　　　　　佛祖保佑             永无BUG
 * 　　　　　佛曰:
 * 　　　　　　　　　　写字楼里写字间，写字间里程序员；
 * 　　　　　　　　　　程序人员写程序，又拿程序换酒钱。
 * 　　　　　　　　　　酒醒只在网上坐，酒醉还来网下眠；
 * 　　　　　　　　　　酒醉酒醒日复日，网上网下年复年。
 * 　　　　　　　　　　但愿老死电脑间，不愿鞠躬老板前；
 * 　　　　　　　　　　奔驰宝马贵者趣，公交自行程序员。
 * 　　　　　　　　　　别人笑我忒疯癫，我笑自己命太贱；
 * 　　　　　　　　　　不见满街漂亮妹，哪个归得程序员？
 */
public class Demo1 {
    private static final String dest = "hello.pdf";

    private static final String font = "classpath:font/FreeSans.ttf";
    private static final String html = "classpath:font/template.html";


    @Test
    public void fun1() throws FileNotFoundException, DocumentException {

        Document document = new Document();
        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(dest));
        document.open();
        document.add(new Paragraph("hello world"));
        document.close();
        writer.close();

    }


    @Test
    public void fun2() throws FileNotFoundException, DocumentException {

        Document document = new Document();
        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(dest));
        document.open();
        Font f1 = FontFactory.getFont(font, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
        document.add(new Paragraph("hello , 我是张桓", f1));
        document.close();
        writer.close();

    }


    @Test
    public void fun3() throws IOException, DocumentException {

        // step1
        Document document = new Document();
        // step2
        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(dest));
        // step3
        document.open();
        // step4
        XMLWorkerFontProvider fontImp = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);

        fontImp.register(font);
        XMLWorkerHelper.getInstance().parseXHtml(writer, document, new FileInputStream(html), null, Charset.forName("UTF-8"), fontImp);
        // step5
        document.close();


    }




}
