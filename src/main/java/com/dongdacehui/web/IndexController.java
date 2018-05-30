package com.dongdacehui.web;

import com.dongdacehui.entity.*;
import com.dongdacehui.service.*;
import com.dongdacehui.utils.ToolUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author zhanghuan
 * @Created by zhanghuan
 * @Created with IntelliJ IDEA.
 * Basic04
 * @User: john
 * @Author: 张桓
 * @Email: yz30.com@aliyun.com
 * @QQ: 248404941
 * @Date: 2018/1/22
 * @Time: 9:45
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
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private UserService userService;

    @Autowired
    private LoginLogService loginLogService;

    @Autowired
    private UploadService uploadService;

    @Autowired
    private SignInService signInService;

    @Autowired
    private SysmService sysmService;

    @Autowired
    private WordService wordService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String detail() {
        return "detail";
    }

    @RequestMapping(value = "/evaluate", method = RequestMethod.GET)
    public String evaluate() {
        return "evaluate";
    }

    @RequestMapping(value = "/note", method = RequestMethod.GET)
    public String note() {
        return "note";
    }

    @RequestMapping(value = "/sheet", method = RequestMethod.GET)
    public String sheet() {
        return "sheet";
    }

    @RequestMapping(value = "/demo", method = RequestMethod.GET)
    public String demo() {
        return "demo";
    }

    @RequestMapping(value = "/SignUp", method = RequestMethod.GET)
    public String signup() {
        return "signup";
    }

    @RequestMapping(value = "/down", method = RequestMethod.GET)
    public String down() {
        return "down";
    }

    @RequestMapping(value = "/reUpload", method = RequestMethod.GET)
    public String reUpload(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        // 如果session中没有值， 就说明没有登录直接打回登录
        if (user == null) {
            return "login";
        } else {
            return "reUpload";
        }
    }

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public void download(@Param("id") String id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 下载权限判定
//        Object user = request.getSession().getAttribute("user");
//        if (user == null) {
//            response.sendRedirect("login");
//        }
        String fileName = request.getSession().getServletContext().getRealPath("download");
        String downloadfilename = "";
        if (id.equals("1")) {
            // 下载通知
            fileName += "/测绘技能大赛一号通知.pdf";
            downloadfilename = "测绘技能大赛一号通知.pdf";

        } else if (id.equals("2")) {
            // 下载报名表
            fileName += "/测绘技能大赛一号通知报名表.doc";
            downloadfilename = "测绘技能大赛一号通知报名表.doc";
        } else if (id.equals("3")) {
            // 下载细则
            fileName += "/第五届全国大学生测绘技能大赛实施细则.pdf";
            downloadfilename = "第五届全国大学生测绘技能大赛实施细则.pdf";
        }

        //获取输入流
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
        //假如以中文名下载的话
        //转码，免得文件名中文乱码
        downloadfilename = URLEncoder.encode(downloadfilename, "UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + downloadfilename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while ((len = bis.read()) != -1) {
            out.write(len);
            out.flush();
        }
        out.close();
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginpage() {
        return "login";
    }

    @RequestMapping(value = "/regist", method = RequestMethod.GET)
    public String registpage() {
        return "regist";
    }

    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    public String regist(@Param("username") String username, @Param("phone") String phone, @Param("email") String email, @Param("password") String password, HttpServletRequest request, HttpServletResponse response) {

        User user = new User();
        user.setSign(0);
        user.setUpload(0);
        user.setFlag(0);
        user.setUsername(username);
        user.setEmail(email);
        user.setPhone(phone);
        user.setPassword(password);
        user.setRegTime(ToolUtils.getFullTime());
        user.setRegIp(request.getRemoteAddr());
        String engine = System.getProperty("os.name") + System.getProperty("os.version") + System.getProperty("os.arch") + request.getHeader("user-agent");
        user.setEngine(engine);

        User user1 = userService.queryByphone(phone);
        if (user1 != null) {
            // 注册失败，手机号已经注册过了
            request.setAttribute("msg", "很遗憾注册失败, 该手机号已经注册过了，请直接登录");
            request.setAttribute("user", user);
            return "regist";
        } else {
            // 手机号没被注册的时候再去判断邮箱是否被注册过
            User user2 = userService.queryByEmail(user.getEmail());
            if (user2 != null) {
                // 注册失败，邮箱已经注册过了
                request.setAttribute("msg", "很遗憾注册失败, 该电子邮箱已经注册过了，请直接登陆或更换邮箱");
                request.setAttribute("user", user);
                return "regist";
            } else {
                int i = userService.addOne(user);
                if (i > 0) {
                    Sysm sysm = sysmService.queryOne();
                    // 注册成功, session 持久化，并重定向到在线报名页面
                    request.getSession().setAttribute("user", user);

                    if (sysm.getStatus() ==0){
                        // 系统不在指定的报名时间段内
                        request.setAttribute("msg", "不在指定的时间段内不能报名，如有问题请按最下方的联系方式联系我们！！！\n<br>报名时间为："+sysm.getSdateF()+"~" + sysm.getSdateT());
                        return "close";
                    } else {
                        return "signup";
                    }
                } else {
                    // 注册失败打回原形, 并给出失败原因
                    request.setAttribute("msg", "很遗憾注册失败, 请检查");
                    request.setAttribute("user", user);
                    return "regist";
                }
            }

        }

    }

    @RequestMapping(value = "/signIn", method = RequestMethod.GET)
    public String signin(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        // 如果session中没有值， 就说明没有登录直接打回登录
        if (user == null) {
            return "login";
        } else {
            Sysm sysm = sysmService.queryOne();
            if (sysm.getStatus() ==0){
                return beforeClose(request, user, sysm);
            }
            // 否则就是登录了，重定向到报名页面
            User user1 = userService.queryByUid(user.getUid());
            if (user1.getSign() == 0) {
                // 用户的上传状态0，还没上传扫描件，放行
                return "signIn";
            } else if (user1.getSign() == 1 && user1.getUpload() == 0) {
                // 用户的在线填报名为1，已经填过表单了，跳转到上传页面
                return "upload";
            } else if (user1.getFlag() == 0 && user1.getSign() == 1 && user1.getUpload() == 1){
                //上传过扫描件同时也在线报名了，上传Word
                return "uploadWord";
            }else {
                // 上传过扫描件同时也在线报名了，上传完Word了，报名完成
                request.setAttribute("msg", "您已经报名成功，请好好准备比赛吧，祝你好运！！");
                return "status";
            }
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@Param("/account") String account, @Param("password") String password, HttpServletRequest request, HttpServletResponse response) {
        if (account.contains("@")) {
            // 用户填的是邮箱
            User user = userService.queryByEmail(account);
            return getString(password, account, request, user);
        } else {
            // 用户填的是手机号
            User user = userService.queryByphone(account);
            return getString(password, account, request, user);
        }
    }

    private String getString(@Param("password") String password, String account, HttpServletRequest request, User user) {
        if (user != null) {
            //　数据库里有该手机号
            if (user.getPassword().equals(password)) {
                // 密码正确, session持久化，写下登录日志信息，重定向去报名

                request.getSession().setAttribute("user", user);
                LoginLog log = new LoginLog();
                String engine = System.getProperty("os.name") + System.getProperty("os.version") + System.getProperty("os.arch") + request.getHeader("user-agent");
                log.setUid(user.getUid());
                log.setEngine(engine);
                log.setLoginTime(ToolUtils.getFullTime());
                log.setLoginIp(request.getRemoteAddr());
                loginLogService.addOne(log);
                return "signup";
            } else {
                // 密码错误
                request.setAttribute("account", account);
                request.setAttribute("msg", "密码错误");
                return "login";
            }
        } else {
            // 数据库里没有该手机号
            request.setAttribute("account", account);
            request.setAttribute("msg", "该账号似乎还没注册过呢~");
            return "login";
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().invalidate();
        return "login";
    }


    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String upload(HttpServletRequest request, HttpServletResponse response) {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            // 没有登录不让上传, 打回登录
            return "login";
        } else {
            Sysm sysm = sysmService.queryOne();
            if (sysm.getStatus() ==0){
                return beforeClose(request, user, sysm);
            }
            User user1 = userService.queryByUid(user.getUid());
            // 上传逻辑
            if (user1.getUpload() == 0) {
                // 用户的上传标记为0，还没上传报名表扫描件了， 放行
                return "upload";
            } else if (user1.getUpload() == 1 && user1.getSign() == 0) {
                // 用户已经上传过扫描件了, 但是还没有在线报名，重定向去在线报名
                request.setAttribute("msg", "您已经成功上传过报名表的扫描件了，还剩最后一步， 赶快去在线报名吧");
                return "signIn";
            } else {
                // 上传过扫描件同时也在线报名了，报名完成
                request.setAttribute("msg", "您已经报名成功，请好好准备比赛吧，祝你好运！！");
                return "status";
            }
        }
    }

    private String beforeClose(HttpServletRequest request, User user, Sysm sysm) {
        if (user.getFlag() == 1 && user.getSign() ==1 && user.getUpload() == 1){
            request.setAttribute("msg", "您已经报名成功，请好好准备比赛吧，祝你好运！！");
            return "status";
        } else {
            request.setAttribute("msg", "不在指定的时间段内不能报名，如有问题请按最下方的联系方式联系我们！！！\n<br>报名时间为：" + sysm.getSdateF() + "~" + sysm.getSdateT());
            return "close";
        }
    }

    @RequestMapping(value = "/member", method = RequestMethod.GET)
    public String member(HttpServletRequest request, HttpServletResponse response, Model model) {
        User user = (User) request.getSession().getAttribute("user");
        SignIn signIn = signInService.queryByUid(user.getUid());
        model.addAttribute("user", user);
        model.addAttribute("signIn", signIn);
        return "member";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        // uploads 文件夹位置
        String rootPath = request.getSession().getServletContext().getRealPath("resource/uploads/");
        // 原始名称
        String originalFileName = file.getOriginalFilename();
        // 新文件名
        User user = (User) request.getSession().getAttribute("user");
        String phone = user.getPhone();
        String newFileName = phone + "-" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // 创建年月文件夹
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH) + 1));
        // 新文件
        File newFile = new File(rootPath + File.separator + dateDirs + File.separator + newFileName);
        // 判断目标文件所在目录是否存在
        if (!newFile.getParentFile().exists()) {
            // 如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        // 将内存中的数据写入磁盘
        file.transferTo(newFile);
        // 完整的url
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/" + newFileName;

        Upload upload = new Upload();
        upload.setUid(user.getUid());
        upload.setPath(fileUrl);
        upload.setUploadIp(request.getRemoteAddr());
        upload.setUploadTime(ToolUtils.getFullTime());
        String engine = System.getProperty("os.name") + System.getProperty("os.version") + System.getProperty("os.arch") + request.getHeader("user-agent");
        upload.setEngine(engine);
        upload.setFilename(newFileName);
        uploadService.addOne(upload);
        userService.updateUpload(user.getUid());
        User user1 = userService.queryByUid(user.getUid());
        // 修改用户的报名状态
        if (user1.getSign() == 0) {
            // 用户的标记为0，还没填写表单，去填写表单
            return "signIn";
        } else {
            //request.setAttribute("msg", "恭喜您！报名成功，请好好准备比赛吧，祝你们好运！！");
            //return "status";
            return "uploadWord";
        }
    }

    @RequestMapping(value = "/status", method = RequestMethod.GET)
    public String status() {
        return "status";
    }


    @RequestMapping(value = "/signIn", method = RequestMethod.POST)
    public String signIn(
            @RequestParam("college") String college,
            @RequestParam("captain") String captain,
            @RequestParam("duty") String duty,
            @RequestParam("phone") String phone,
            @RequestParam("email") String email,
            @RequestParam("address") String address,
            HttpServletRequest request,
            HttpServletResponse response) {
        User user = (User) request.getSession().getAttribute("user");
        SignIn signIn = new SignIn();
        signIn.setUid(user.getUid());
        signIn.setCollege(college);
        signIn.setCaptain(captain);
        signIn.setDuty(duty);
        signIn.setPhone(phone);
        signIn.setEmail(email);
        signIn.setAddress(address);
        signInService.addOne(signIn);
        // 修改在线报名状态
        userService.updateSign(user.getUid());
        // 查询上传信息判定报名进度
        User user1 = userService.queryByUid(user.getUid());
        if (user1.getUpload() == 0) {
            return "upload";
        } else {
            // 这个函数表示在线报名，同时 用户的扫描件信息也不为0， 不让再次操作了，直接提示报名成功
            request.setAttribute("msg", "恭喜!! 您已经报名成功，请好好准备比赛吧，祝你好运！！");
            return "status";
        }
    }


    @RequestMapping(value = "/uploadWord", method = RequestMethod.GET)
    public String uploadWord(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            // 没有登录不让上传, 打回登录
            return "login";
        } else {
            Sysm sysm = sysmService.queryOne();
            if (sysm.getStatus() ==0){
              return beforeClose(request, user, sysm);
            }
            User user1 = userService.queryByUid(user.getUid());
            // 上传逻辑
            if (user1.getUpload() == 0) {
                // 用户的上传标记为0，还没上传报名表扫描件了， 放行
                return "upload";
            } else if (user1.getUpload() == 1 && user1.getSign() == 0) {
                // 用户已经上传过扫描件了, 但是还没有在线报名，重定向去在线报名
                request.setAttribute("msg", "您已经成功上传过报名表的扫描件了，还剩最后一步， 赶快去在线报名吧");
                return "signIn";
            } else if (user1.getFlag() == 0 && user1.getSign() == 1 && user1.getUpload() == 1) {
                // 确定用户已经填过报名信息，上传过扫描件，同时还没有上传Word才让进来
                return "uploadWord";
            } else{// if(user1.getSign() == 1 && user1.getUpload() == 1 && user1.getFlag() == 1){
                // 上传过扫描件同时也在线报名了，报名完成
                request.setAttribute("msg", "您已经报名成功，请好好准备比赛吧，祝你好运！！");
                return "status";
            }
        }
    }


    @RequestMapping(value = "/uploadWord", method = RequestMethod.POST)
    public String uploadWordPost(MultipartFile file,HttpServletRequest request) throws IOException {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        String rootPath = request.getSession().getServletContext().getRealPath("resource/words/");
        if(file.isEmpty()){
            request.setAttribute("msg", "警告：请选择文件后再上传");
            return "uploadWord";
        }
        // 原始名称
        String originalFileName = file.getOriginalFilename();
        // 新文件名
        User user = (User)request.getSession().getAttribute("user");
        String phone = user.getPhone();
        String newFileName = phone + "-" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // 创建年月文件夹
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH) + 1));
        // 新文件
        File newFile = new File(rootPath + File.separator + dateDirs + File.separator + newFileName);
        // 判断目标文件所在目录是否存在
        if (!newFile.getParentFile().exists()) {
            // 如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        // 将内存中的数据写入磁盘
        file.transferTo(newFile);
        // 完整的url
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/" + newFileName;


        Word word = new Word();
        word.setUid(user.getUid());
        word.setPath(fileUrl);
        word.setUploadIp(request.getRemoteAddr());
        word.setUploadTime(ToolUtils.getFullTime());
        word.setFilename(newFileName);

        wordService.addOne(word);
        userService.updateWord(user.getUid());
        User user1 = userService.queryByUid(user.getUid());

        // 修改用户状态
        if (user1.getUpload() != 1){
            return "upload";
        } else if (user1.getSign() != 1){
            return "signIn";
        } else if (user1.getFlag() != 1){
            return "uploadWord";
        } else {
            // 上传过扫描件同时也在线报名了，报名完成
            request.setAttribute("msg", "您已经报名成功，请好好准备比赛吧，祝你好运！！");
            return "status";
        }

    }

    @RequestMapping(value = "/selectall", method = RequestMethod.GET)
    public String selectAll(HttpServletRequest request){
        List<User> users = userService.selectAll();
        request.setAttribute("users", users);
        return "list";
    }

    @RequestMapping(value = "/reUpload", method = RequestMethod.POST)
    public String reUploadPost(MultipartFile file,HttpServletRequest request, HttpServletResponse response) throws IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        String rootPath = request.getSession().getServletContext().getRealPath("resource/words/");
        if(file.isEmpty()){
            request.setAttribute("msg", "警告：请选择文件后再上传");
            return "uploadWord";
        }
        // 原始名称
        String originalFileName = file.getOriginalFilename();
        // 新文件名
        User user = (User)request.getSession().getAttribute("user");
        String phone = user.getPhone();
        String newFileName = phone + "-" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // 创建年月文件夹
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH) + 1));
        // 新文件
        File newFile = new File(rootPath + File.separator + dateDirs + File.separator + newFileName);
        // 判断目标文件所在目录是否存在
        if (!newFile.getParentFile().exists()) {
            // 如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        // 将内存中的数据写入磁盘
        file.transferTo(newFile);
        // 完整的url
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/" + newFileName;


        Word word = new Word();
        word.setUid(user.getUid());
        word.setPath(fileUrl);
        word.setUploadIp(request.getRemoteAddr());
        word.setUploadTime(ToolUtils.getFullTime());
        word.setFilename(newFileName);

        wordService.addOne(word);
        User user1 = userService.queryByUid(user.getUid());
        request.setAttribute("msg", "您已经成功重新上传了参赛队员信息，请好好准备比赛吧，祝你们好运！！");
        return "state";
    }




}
