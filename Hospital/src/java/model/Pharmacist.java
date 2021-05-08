/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author PC
 */
public class Pharmacist {
    private String staffid;
    private String name;
    private String password;

    /**
     * @return the staffid
     */
    public String getStaffid() {
        return staffid;
    }

    /**
     * @param staffid the staffid to set
     */
    public void setStaffid(String staffid) {
        this.staffid = staffid;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
}
