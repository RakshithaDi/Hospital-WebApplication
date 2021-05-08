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
public class DBConnection {
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
                    
        } catch(Exception e){
            System.out.println(e);
        }
        return con;
        
        
    }
    
    public static List<Patient>getAllPatients(int pid){
       
        List<Patient> list= new ArrayList<Patient>();
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from patient where PatientID ='"+pid+"'  ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Patient e=new Patient();
               
                e.setPid(rs.getInt(1));
                e.setFname(rs.getString(2));
                e.setLname(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setMobileNo(rs.getInt(5));
                e.setAddress(rs.getString(6));
                e.setDob(rs.getString(7));
                e.setGender(rs.getString(8));
                e.setBloodGroup(rs.getString(9));
                e.setPec(rs.getString(10));
                
               // e.setDeceased(rs.getString(11));
               
                
                
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
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from appointment");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Appointments a=new Appointments();
                //e.setNic(rs.getString(1));
                a.setAptid(rs.getInt(1));
                a.setLineno(rs.getInt(2));
                a.setPid(rs.getInt(3));
                a.setDocid(rs.getInt(4));
                a.setDate(rs.getString(5));
                a.setPharmacy(rs.getString(6));
             
               
                
                
                list.add(a);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
    }
    
    public static List<Prescription>getPrescription(int pid){
       
        List<Prescription> list= new ArrayList<Prescription>();
        int status=0;
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from prescription where PatientID ='"+pid+"'  ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Prescription p=new Prescription();
               
                p.setPrscid(rs.getInt(1));
                p.setPid(rs.getInt(2));
                p.setDocid(rs.getInt(3));
                p.setPrsclist(rs.getString(4));
                p.setNotes(rs.getString(5));
                p.setDate(rs.getString(6));
             
               // e.setDeceased(rs.getString(11));
               
               
                
                list.add(p);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
        
        
    }
    
    public boolean addDiagnosisPrescriptions(int patientid,int docid,String prsc,String diagnosis,String date) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
        PreparedStatement ps=getConnection().prepareStatement("insert into prescription(PatientID,DoctorID,PrscList,Notes,Date) values(?,?,?,?,?)");
        ps.setInt(1,patientid);
        ps.setInt(2,docid);
        ps.setString(3,prsc);
        ps.setString(4,diagnosis);
        ps.setString(5,date);
        int i = ps.executeUpdate();
        if(i>0)
        {
            return true;
        }
        else
        {
            return false;
        }
       
    }   
    
    public boolean checkDoctor(String username,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
        boolean st = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from doctor where FirstName=? and Password=?");
             ps.setString(1,username);
             ps.setString(2,password); 
             ResultSet rs = ps.executeQuery();
             st=rs.next();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return st;
       
    }   
    
    
     public boolean checkPharmacist(String username,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
        boolean st = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from pharmacist where Name=? and Password=?");
             ps.setString(1,username);
             ps.setString(2,password); 
             ResultSet rs = ps.executeQuery();
             st=rs.next();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return st;
       
    }   
     
     public boolean checkReceptionist(String username,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
        boolean st = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from receptionist where Name=? and Password=?");
             ps.setString(1,username);
             ps.setString(2,password); 
             ResultSet rs = ps.executeQuery();
             st=rs.next();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return st;
       
    }   
}
