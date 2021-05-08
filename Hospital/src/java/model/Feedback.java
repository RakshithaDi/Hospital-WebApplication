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
public class Feedback {
    
    private int feedbckid;
    private String feedbck;
    private int stars;

    /**
     * @return the feedbckid
     */
    public int getFeedbckid() {
        return feedbckid;
    }

    /**
     * @param feedbckid the feedbckid to set
     */
    public void setFeedbckid(int feedbckid) {
        this.feedbckid = feedbckid;
    }

    /**
     * @return the feedbck
     */
    public String getFeedbck() {
        return feedbck;
    }

    /**
     * @param feedbck the feedbck to set
     */
    public void setFeedbck(String feedbck) {
        this.feedbck = feedbck;
    }

    /**
     * @return the stars
     */
    public int getStars() {
        return stars;
    }

    /**
     * @param stars the stars to set
     */
    public void setStars(int stars) {
        this.stars = stars;
    }
    
    
    
}
