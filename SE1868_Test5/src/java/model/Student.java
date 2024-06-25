/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER
 */
public class Student {
    private int sid;
    private String sname;
    private String sdob;
    private boolean sgender;
    private int did;

    public Student() {
    }

    public Student(int sid, String sname, String sdob, boolean sgender, int did) {
        this.sid = sid;
        this.sname = sname;
        this.sdob = sdob;
        this.sgender = sgender;
        this.did = did;
    }

    public Student(String sname, String sdob, boolean sgender, int did) {
        this.sname = sname;
        this.sdob = sdob;
        this.sgender = sgender;
        this.did = did;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSdob() {
        return sdob;
    }

    public void setSdob(String sdob) {
        this.sdob = sdob;
    }

    public boolean isSgender() {
        return sgender;
    }

    public void setSgender(boolean sgender) {
        this.sgender = sgender;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }
    
}
