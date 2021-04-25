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
public class Appointments {
    private int aptid;
    private int lineno;
    private int pid;
    private int docid;
    
    private String date;
    private String pharmacy;

    /**
     * @return the aptid
     */
    public int getAptid() {
        return aptid;
    }

    /**
     * @param aptid the aptid to set
     */
    public void setAptid(int aptid) {
        this.aptid = aptid;
    }

    /**
     * @return the lineno
     */
    public int getLineno() {
        return lineno;
    }

    /**
     * @param lineno the lineno to set
     */
    public void setLineno(int lineno) {
        this.lineno = lineno;
    }

    /**
     * @return the pid
     */
    public int getPid() {
        return pid;
    }

    /**
     * @param pid the pid to set
     */
    public void setPid(int pid) {
        this.pid = pid;
    }

    /**
     * @return the docid
     */
    public int getDocid() {
        return docid;
    }

    /**
     * @param docid the docid to set
     */
    public void setDocid(int docid) {
        this.docid = docid;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the pharmacy
     */
    public String getPharmacy() {
        return pharmacy;
    }

    /**
     * @param pharmacy the pharmacy to set
     */
    public void setPharmacy(String pharmacy) {
        this.pharmacy = pharmacy;
    }
   
    
}
