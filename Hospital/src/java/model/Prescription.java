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
public class Prescription {
    
    private int prscid;
    private int pid;
    private int docid;
    private String prsclist;
    private String notes;
    private String date;

    /**
     * @return the prscid
     */
    public int getPrscid() {
        return prscid;
    }

    /**
     * @param prscid the prscid to set
     */
    public void setPrscid(int prscid) {
        this.prscid = prscid;
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
     * @return the prsclist
     */
    public String getPrsclist() {
        return prsclist;
    }

    /**
     * @param prsclist the prsclist to set
     */
    public void setPrsclist(String prsclist) {
        this.prsclist = prsclist;
    }

    /**
     * @return the notes
     */
    public String getNotes() {
        return notes;
    }

    /**
     * @param notes the notes to set
     */
    public void setNotes(String notes) {
        this.notes = notes;
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
    
            
    
}
