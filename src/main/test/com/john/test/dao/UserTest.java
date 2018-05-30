package com.john.test.dao;

import com.dongdacehui.dao.*;
import com.dongdacehui.entity.*;
import com.john.test.BaseTest;
import org.junit.Test;
import org.junit.platform.commons.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.List;

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
 * @Time: 17:01
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
public class UserTest extends BaseTest{

    @Autowired
    @Resource
    private UserDao userDao;


    @Autowired
    @Resource
    private LoginLogDao loginLogDao;

    @Autowired
    @Resource
    private UploadDao uploadDao;

    @Autowired
    @Resource
    private SignInDao signInDao;

    @Autowired
    @Resource
    private WordDao wordDao;


    @Test
    public void testAddOne(){
        User user = new User();
        user.setUsername("a");
        user.setEngine("windows");
        user.setFlag(0);
        user.setPassword("b");
        user.setPhone("18640396630");
        user.setRegIp("127.0.0.1");
        user.setRegTime("2018-1-22 17:04:22");
//        boolean i = userDao.addOne(user);
//        System.out.println(i);
    }


    @Test
    public void testQueryByphone(){
        String phone = "b";
        User user = userDao.queryByphone(phone);
        System.out.println(user);
    }

    @Test
    public void testQueryAll(){
        List<User> users = userDao.queryAll();
        System.out.println(users);

    }

    @Test
    public void testQueryByFlag(){
        int flag = 1;
        List<User> users = userDao.queryByFlag(flag);
        System.out.println(users);

    }

    @Test
    public void testAddOneLoginLog(){
        LoginLog log = new LoginLog();
        log.setEngine("windows");
        log.setLid(1);
        log.setLoginIp("127.0.0.1");
        log.setLoginTime("2018-1-22 17:23:35");

        int i = loginLogDao.addOne(log);
        System.out.println(i);

    }


    @Test
    public void testAddoneUpload(){
        Upload upload = new Upload();
        upload.setEngine("a");
        upload.setPath("b");
        upload.setLid(2);
        upload.setUploadIp("127.0.0.1");
        upload.setUploadTime("2018-1-23");
        int i = uploadDao.addOne(upload);
        System.out.println(i);

    }

    @Test
    public void testUpdateadd1(){
        int i = userDao.updateFlag(5);
        System.out.println(i);
    }

    @Test
    public void testAddone(){
        SignIn signIn = new SignIn();
        signIn.setCaptain("a");
        signIn.setCollege("b");
        signIn.setDuty("v");
        signIn.setEmail("c");
        signIn.setPhone("d");
        int i = signInDao.addOne(signIn);
        System.out.println(i);
    }

    @Test
    public void fun1(){
        SignIn signIn = signInDao.queryByUid(6);
        System.out.println(signIn);

    }

    @Test
    public void fun2(){
        Word word = new Word();
        word.setPath("1");
        word.setUid(1);
        word.setUploadIp("2");
        word.setUploadTime("3");
        int i = wordDao.addOne(word);
        System.out.println(i);
    }

    @Test
    public void fun3(){
        int i = userDao.updateWord(22);
        System.out.println(i);
    }


    @Test
    public void fun4(){
        List<User> users = userDao.selectAll();
        System.out.println(users);
    }


}
