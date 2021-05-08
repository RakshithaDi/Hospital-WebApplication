/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Services;

import java.security.*;
import java.util.Arrays;
/**
 *
 * @author PC
 */
public class Security {

    public String getHash(String toHash)
    {
       //Encryption always involves Byte values
        byte[] byteHash = null;//byte array to hold the encrypted value
        String hash = null;//string to hold the byte array converted to string
        
        try{
            //MessageDigest class includes methods for encryption
            //provide encryption algorithm name in the getInstance()
            MessageDigest message= MessageDigest.getInstance("SHA-256");
            //Assign the  the string to be encrypted in bytes form
            message.update(toHash.getBytes());
            //encrypt by calling the digest method
            byteHash = message.digest();
            //convert the encrypted bytes value into string
            hash = Arrays.toString(byteHash);
            
        }
        catch(NoSuchAlgorithmException ex)//catch specific exception 
        {
            ex.printStackTrace();
        }
        catch(Exception ex)//catch genaral exception 
        {
            ex.printStackTrace();
        }
        return hash; //return encrypted value as a string
    }
    
}
