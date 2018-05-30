package com.john.test;

import org.junit.jupiter.api.Test;

import java.util.*;

/**
 * @Project competition
 * @Created with IntelliJ IDEA.
 * @User: zhanghuan
 * @Author: 张桓
 * @Email: yz30.com@aliyun.com
 * @QQ: 248404941
 * @Date: 2018/5/4
 * @Time: 20:51
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
public class Demo {

    private int x = 30;

    private void updateValue(int value){
        value = 3 * value;
    }

    private static User1 user=null;
    public static void updateUser(User1 student){
//        student.setUsername();
        student.setAge(18);
        student.setUsername("zhanghuan");
    }

    @Test
    public void fun2(){
        User1 user = new User1("john", 123);
        System.out.println(user.toString());
        updateUser(user);
        System.out.println(user.toString());
    }





    @Test
    public void fun1(){
        System.out.println(x);
        updateValue(x);
        System.out.println(x);
    }

    @Test
    public void fun(){
        char[] ch = {'z','z','h','a'};
        String zhanghuan = new String();


//        Abc param = get2Param();
//        List<Number[]> param = get2Param();
//        for (Number[] numbers : param) {
//            for (Number number : numbers) {
//                System.out.println(numbers);
//            }
//            System.out.println("---------------");
//        }
    }
//    public Abc get2Param(){
    public List<Number[]> get2Param(){
//        Map<String, Number[]> map = new HashMap<String, Number[]>();
        List<Number[]> list = new ArrayList<Number[]>();
        Integer[] i1 = {1, 5, 2, 7};
        Double[] d1 = {1.1, 2.45, 3.32};
        System.out.println("i1====" + i1);
        System.out.println("d1===" +  d1);
//        Character[] c1 = {'a', 'b', 'y'};
//        map.put("int", i1);
//        map.put("double", d1);
//        Abc abc = new Abc();
//        abc.setC(c1);
//        abc.setD(d1);
//        abc.setI(i1);

//        return abc;
        list.add(i1);
        list.add(d1);
        return list;
    }
}


class Abc{
    private Integer[] i;
    private Double[] d;
    private Character[] c;

    @Override
    public java.lang.String toString() {
        return "Abc{" +
                "i=" + Arrays.toString(i) +
                ", d=" + Arrays.toString(d) +
                ", c=" + Arrays.toString(c) +
                '}';
    }

    public Integer[] getI() {
        return i;
    }

    public void setI(Integer[] i) {
        this.i = i;
    }

    public Double[] getD() {
        return d;
    }

    public void setD(Double[] d) {
        this.d = d;
    }

    public Character[] getC() {
        return c;
    }

    public void setC(Character[] c) {
        this.c = c;
    }
}

class User1{
    private String username;
    private int age;

    public String getUsername() {
        return username;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public User1(String username, int age) {
        this.username = username;
        this.age = age;
    }

    @Override
    public java.lang.String toString() {
        return "User{" +
                "username=" + username +
                ", age=" + age +
                '}';
    }


}
