package com.dongdacehui.entity;

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
 * @Time: 16:39
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
public class LoginLog {
    // 主键id
    private int lid;
    // 用户 id
    private int uid;

    // 用户登录平台
    private String engine;

    // 用户登录时间
    private String loginTime;

    // 登录ip
    private String loginIp;

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(String loginTime) {
        this.loginTime = loginTime;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LoginLog loginLog = (LoginLog) o;

        if (lid != loginLog.lid) return false;
        if (uid != loginLog.uid) return false;
        if (engine != null ? !engine.equals(loginLog.engine) : loginLog.engine != null) return false;
        if (loginTime != null ? !loginTime.equals(loginLog.loginTime) : loginLog.loginTime != null) return false;
        return loginIp != null ? loginIp.equals(loginLog.loginIp) : loginLog.loginIp == null;
    }

    @Override
    public int hashCode() {
        int result = lid;
        result = 31 * result + uid;
        result = 31 * result + (engine != null ? engine.hashCode() : 0);
        result = 31 * result + (loginTime != null ? loginTime.hashCode() : 0);
        result = 31 * result + (loginIp != null ? loginIp.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "LoginLog{" +
                "lid=" + lid +
                ", uid=" + uid +
                ", engine='" + engine + '\'' +
                ", loginTime='" + loginTime + '\'' +
                ", loginIp='" + loginIp + '\'' +
                '}';
    }
}
