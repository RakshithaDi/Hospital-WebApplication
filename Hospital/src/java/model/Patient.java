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
public class Patient {
    private int sno;
    private String nic;
    private String fname;
    private String lname;
    private String email;
    private String docotorName;
    private String bloodGroup;
    private String gender;
    private String dob;
    private String deceased;
    private String address;
    private int mobileNo;
    
     public String getNic() {
        return nic;
    }

    /**
     * @param fname the fname to set
     */
    public void setSno(int sno) {
        this.sno = sno;
    }
    
   
    
     public int getSno() {
        return sno;
    }

    /**
     * @param fname the fname to set
     */
    public void setNic(String nic) {
        this.nic = nic;
    }

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the docotorName
     */
    public String getDocotorName() {
        return docotorName;
    }

    /**
     * @param docotorName the docotorName to set
     */
    public void setDocotorName(String docotorName) {
        this.docotorName = docotorName;
    }

    /**
     * @return the bloodGroup
     */
    public String getBloodGroup() {
        return bloodGroup;
    }

    /**
     * @param bloodGroup the bloodGroup to set
     */
    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the dob
     */
    public String getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(String dob) {
        this.dob = dob;
    }

    /**
     * @return the deceased
     */
    public String getDeceased() {
        return deceased;
    }

    /**
     * @param deceased the deceased to set
     */
    public void setDeceased(String deceased) {
        this.deceased = deceased;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the mobileNo
     */
    public int getMobileNo() {
        return mobileNo;
    }

    /**
     * @param mobileNo the mobileNo to set
     */
    public void setMobileNo(int mobileNo) {
        this.mobileNo = mobileNo;
    }
    
    
}
