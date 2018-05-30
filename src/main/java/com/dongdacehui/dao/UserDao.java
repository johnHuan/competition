package com.dongdacehui.dao;

import com.dongdacehui.entity.User;
import org.apache.ibatis.annotations.Param;

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
 * @Time: 16:46
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
public interface UserDao {

    /**
     * 按手机号查询，实际为登录校验和注册时的数据是否重复性校验
     * @param phone
     * @return
     */
    User queryByphone(String phone);

    User queryByEmail(String email);

    /**
     * 添加用户，实际为用户注册
     * @param user
     * @return
     */
    int addOne(User user);

    /**
     * 查询所有用户
     * @return
     */
    List<User> queryAll();

    /**
     * 查看报名进度
     * @param flag
     * @return
     */
    List<User> queryByFlag(int flag);

    /**
     * 按照用户uid查询
     * @param uid
     * @return
     */
    User queryByUid(int uid);

    /**
     * 修改用户的报名进度
     * @param uid
     * @return
     */
    int updateFlag(int uid);

    /**
     * 修改在线报名状态
     * @param uid
     * @return
     */
    int updateSign(int uid);

    /**
     * 修改上传状态
     * @param uid
     * @return
     */
    int updateUpload(int uid);

    /**
     * 修改上传word状态
     * @param uid
     * @return
     */
    int updateWord(int uid);

    List<User> selectAll();



}
