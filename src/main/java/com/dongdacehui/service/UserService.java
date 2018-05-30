package com.dongdacehui.service;

import com.dongdacehui.dao.UserDao;
import com.dongdacehui.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
 * @Time: 17:28
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
@Service
@Transactional
public class UserService {

    @Autowired
    @Resource
    private UserDao userDao;


    /**
     * 按手机号查询，实际为登录校验和注册时的数据是否重复性校验
     * @param phone
     * @return
     */
    public User queryByphone(String phone){
        return userDao.queryByphone(phone);
    }

    public User queryByEmail(String email){
        return userDao.queryByEmail(email);
    }

    /**
     * 添加用户，实际为用户注册
     * @param user
     * @return
     */
    public int addOne(User user){
        return userDao.addOne(user);
    }

    /**
     * 查询所有用户
     * @return
     */
    public List<User> queryAll(){
        return userDao.queryAll();
    }

    /**
     * 查看用户报名进度
     * @param id
     * @return
     */
    public List<User> queryByFlag(int id){
        return userDao.queryByFlag(id);
    }

    /**
     * 修改用户的报名状态
     * @param uid
     * @return
     */
    public int updateFlag(int uid){
        return userDao.updateFlag(uid);
    }

    /**
     * 按照用户的uid查询用户信息， 主要是为了查看报名进度
     * @param uid
     * @return
     */
    public User queryByUid(int uid){
        return userDao.queryByUid(uid);
    }

    /**
     * 修改在线报名状态
     * @param uid
     * @return
     */
    public int updateSign(int uid){
        return userDao.updateSign(uid);
    }

    /**
     * 修改上传状态
     * @param uid
     * @return
     */
    public int updateUpload(int uid){
        return userDao.updateUpload(uid);
    }


    /**
     * 修改word上传状态
     * @param uid
     * @return
     */
    public int updateWord(int uid){
        return userDao.updateWord(uid);
    }

    public List<User> selectAll(){
        List<User> users = userDao.selectAll();
        return users;
    }

}
