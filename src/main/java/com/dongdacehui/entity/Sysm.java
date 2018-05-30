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
 * @Date: 2018/1/24
 * @Time: 14:20
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
public class Sysm {

    private int sid;
    private String sdateF;
    private String sdateT;
    private int status;


    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSdateF() {
        return sdateF;
    }

    public void setSdateF(String sdateF) {
        this.sdateF = sdateF;
    }

    public String getSdateT() {
        return sdateT;
    }

    public void setSdateT(String sdateT) {
        this.sdateT = sdateT;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sysm sysm = (Sysm) o;

        if (sid != sysm.sid) return false;
        if (status != sysm.status) return false;
        if (sdateF != null ? !sdateF.equals(sysm.sdateF) : sysm.sdateF != null) return false;
        return sdateT != null ? sdateT.equals(sysm.sdateT) : sysm.sdateT == null;
    }

    @Override
    public int hashCode() {
        int result = sid;
        result = 31 * result + (sdateF != null ? sdateF.hashCode() : 0);
        result = 31 * result + (sdateT != null ? sdateT.hashCode() : 0);
        result = 31 * result + status;
        return result;
    }

    @Override
    public String toString() {
        return "Sysm{" +
                "sid=" + sid +
                ", sdateF='" + sdateF + '\'' +
                ", sdateT='" + sdateT + '\'' +
                ", status=" + status +
                '}';
    }
}
