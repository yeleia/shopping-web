package org.yelei.entity;

/**
 * Created by yelei on 16-12-3.
 */
public class Client {
    private Integer id;
    private String Cname;
    private String Cadress;
    private String Cphone;
    private String Ctest;
    private String Cimage;
    private String Cpassword;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getCadress() {
        return Cadress;
    }

    public void setCadress(String cadress) {
        Cadress = cadress;
    }

    public String getCphone() {
        return Cphone;
    }

    public void setCphone(String cphone) {
        Cphone = cphone;
    }

    public String getCtest() {
        return Ctest;
    }

    public void setCtest(String ctest) {
        Ctest = ctest;
    }

    public String getCname() {
        return Cname;
    }

    public void setCname(String cname) {
        Cname = cname;
    }

    public String getCimage() {
        return Cimage;
    }

    public void setCimage(String cimage) {
        Cimage = cimage;
    }

    public String getCpassword() {
        return Cpassword;
    }

    public void setCpassword(String cpassword) {
        Cpassword = cpassword;
    }
}
