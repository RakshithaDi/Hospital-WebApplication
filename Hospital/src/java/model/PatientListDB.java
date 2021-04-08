/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class PatientListDB {
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostpital","root","");
                    
        } catch(Exception e){
            System.out.println(e);
        }
        return con;
        
        
    }
    
    public static List<Patient>getAllPatients(){
       
        List<Patient> list= new ArrayList<Patient>();
        try{
            
            Connection con = PatientListDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from patient");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Patient e=new Patient();
                //e.setNic(rs.getString(1));
                e.setSno(rs.getInt(2));
                e.setFname(rs.getString(3));
                e.setLname(rs.getString(4));
                e.setEmail(rs.getString(5));
                e.setDocotorName(rs.getString(6));
                e.setMobileNo(rs.getInt(7));
                e.setBloodGroup(rs.getString(8));
                e.setGender(rs.getString(9));
                e.setDob(rs.getString(10));
                e.setDeceased(rs.getString(11));
                e.setAddress(rs.getString(12));
                
                
                list.add(e);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
    }
    
    
        public static List<Appointments>getAllAppointments(){
       
        List<Appointments> list= new ArrayList<Appointments>();
        try{
            
            Connection con = PatientListDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from appointment");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Appointments a=new Appointments();
                //e.setNic(rs.getString(1));
                a.setSno(rs.getInt(1));
                a.setFname(rs.getString(2));
                a.setLname(rs.getString(3));
                a.setDocname(rs.getString(4));
                a.setMobileno(rs.getInt(5));
                a.setDate(rs.getString(6));
                a.setTime(rs.getString(7));
                a.setDeceased(rs.getString(8));
                a.setAddress(rs.getString(9));
               
                
                
                list.add(a);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
    }
        
         public static List<Patient>SearchPatient(String name){
       
        List<Patient> list= new ArrayList<Patient>();
        try{
            
            Connection con = PatientListDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from patient where FirstName="+name+" ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Patient e=new Patient();
                //e.setNic(rs.getString(1));
                e.setSno(rs.getInt(2));
                e.setFname(rs.getString(3));
                e.setLname(rs.getString(4));
                e.setEmail(rs.getString(5));
                e.setDocotorName(rs.getString(6));
                e.setMobileNo(rs.getInt(7));
                e.setBloodGroup(rs.getString(8));
                e.setGender(rs.getString(9));
                e.setDob(rs.getString(10));
                e.setDeceased(rs.getString(11));
                e.setAddress(rs.getString(12));
                
                
                list.add(e);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
    }
        
        
        
   
   
}
