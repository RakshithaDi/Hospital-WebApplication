/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;


import Services.Security;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
                
                
                e.setAddress(rs.getString(7));
                e.setDob(rs.getString(8));
                e.setGender(rs.getString(9));
                e.setBloodGroup(rs.getString(10));
                e.setPec(rs.getString(11));
                
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
               
                a.setLineno(rs.getInt(1));
                a.setPid(rs.getInt(2));
                a.setDocid(rs.getInt(3));
                a.setDate(rs.getString(4));
                a.setTime(rs.getString(5));
                a.setPharmacy(rs.getString(6));
                a.setAptid(rs.getInt(7));
               
                
                
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
         String encryptedPassword = security.getHash(password);
        boolean verified = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from doctor where Username=?");
             ps.setString(1,username);
            
             ResultSet rs = ps.executeQuery();
             
             if(rs.next() && encryptedPassword.equals(rs.getString("Password"))){
                 verified = true;
             }
          
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return verified;
       
    }   
    
    
     public boolean checkPharmacist(String username,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
         String encryptedPassword = security.getHash(password);
        boolean verified = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from pharmacist where Username=?");
             ps.setString(1,username);
             
             ResultSet rs = ps.executeQuery();
             
               if(rs.next() && encryptedPassword.equals(rs.getString("Password"))){
                 verified = true;
             }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
       return verified;
       
    }   
     
     public boolean checkReceptionist(String username,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
          String encryptedPassword = security.getHash(password);
        boolean verified = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from receptionist where Username=?");
             ps.setString(1,username);
             
             ResultSet rs = ps.executeQuery();
             
                if(rs.next() && encryptedPassword.equals(rs.getString("Password"))){
                 verified = true;
             }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return verified;
       
    }  
     
     
     
         public boolean checkPatient(String email,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    { 
         String encryptedPassword = security.getHash(password);
        boolean verified = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from patient where email=?");
             ps.setString(1,email);
            
             ResultSet rs = ps.executeQuery();
             
             if(rs.next() && encryptedPassword.equals(rs.getString("Password"))){
                 verified = true;
             }
          
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return verified;
       
    }  
         
         
         public boolean checkAdmin(String username,String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
          String encryptedPassword = security.getHash(password);
        boolean verified = false;
        try{
            PreparedStatement ps=getConnection().prepareStatement("Select * from webadmin where Username=?");
             ps.setString(1,username);
             
             ResultSet rs = ps.executeQuery();
             
                if(rs.next() && encryptedPassword.equals(rs.getString("Password"))){
                 verified = true;
             }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
        return verified;
       
    }  
     
     
     
     
     
     
     
      Security security = new Security();
    
  public boolean RegDoctor(String nic, String regno, String fname, String lname,String username,int phoneno,String email, String password,String address,String doctype) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
    
        
        
        String encryptedPassword = security.getHash(password);
     
            PreparedStatement ps=getConnection().prepareStatement("Insert into doctor(DoctorType,NIC,RegNo,FirstName,LastName,Username,PhoneNo,Email,Password,Address) values(?,?,?,?,?,?,?,?,?,?)");
             ps.setString(1,doctype);
             ps.setString(2,nic);
             ps.setString(3,regno);
             ps.setString(4,fname);
             ps.setString(5,lname);
             ps.setString(6,username);
             ps.setInt(7,phoneno);
             ps.setString(8,email);
             ps.setString(9,encryptedPassword);
             ps.setString(10,address);
          
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
  
  
    public boolean RegPharmacist(String name, String username, String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
    
        
        
        String encryptedPassword = security.getHash(password);
     
            PreparedStatement ps=getConnection().prepareStatement("Insert into pharmacist(Name,Username,Password) values(?,?,?)");
             ps.setString(1,name);
             ps.setString(2,username);
             ps.setString(3,encryptedPassword);
          
          
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
    
    
      public boolean RegReceptionist(String name, String username, String password) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
    
        
        
            String encryptedPassword = security.getHash(password);
     
            PreparedStatement ps=getConnection().prepareStatement("Insert into receptionist(Name,Username,Password) values(?,?,?)");
             ps.setString(1,name);
             ps.setString(2,username);
             ps.setString(3,encryptedPassword);
           
          
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
      
       public static List<Feedback>getFeedback(){
       
        List<Feedback> list= new ArrayList<Feedback>();
        int status=0;
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from feedback");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Feedback f1=new Feedback();
               
                f1.setFeedbckid(rs.getInt(1));
                f1.setFeedbck(rs.getString(2));
                f1.setStars(rs.getInt(3));
        
            
             
               // e.setDeceased(rs.getString(11));
               
               
                
                list.add(f1);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
        
        
    }
       
       public boolean RegPatient(String fname,String lname,String email,int phoneno,String password,String gender,String bloodgroup,String dob,String address,String pec) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
    
        
        
        String encryptedPassword = security.getHash(password);
     
            PreparedStatement ps=getConnection().prepareStatement("Insert into patient(FirstName,LastName,Email,PhoneNo,Password,Address,DOB,Gender,BloodType,PEC) values(?,?,?,?,?,?,?,?,?,?)");
             ps.setString(1,fname);
             ps.setString(2,lname);
             ps.setString(3,email);
             ps.setInt(4,phoneno);
             ps.setString(5,encryptedPassword);
             ps.setString(6,address);
             ps.setString(7,dob);
             ps.setString(8,gender);
             ps.setString(9,bloodgroup);
             ps.setString(10,pec);
          
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
       
       
       
       
            public boolean AddAppointment(int lineno,int pid,int docid,String date,String time,String pharmacy) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
        PreparedStatement ps=getConnection().prepareStatement("Insert into appointment(LineNo,PatientID,DoctorID,Date,Time,Pharmacy) values(?,?,?,?,?,?)");
        
        ps.setInt(1,lineno);
        ps.setInt(2,pid);
        ps.setInt(3,docid);
        ps.setString(4,date);
        ps.setString(5,time);
        ps.setString(6,pharmacy);
        
           
        
       
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
            
            
       
       
       
        public boolean AddFeedback(String rate,String feedback) throws ClassNotFoundException, ClassNotFoundException, SQLException
    {
        PreparedStatement ps=getConnection().prepareStatement("insert into feedback(Text,Stars) values(?,?)");
        ps.setString(1,feedback);
        ps.setString(2,rate);
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
        
        
      public static List<Doctor>getDoctors(String doctype){
       
        List<Doctor> list= new ArrayList<Doctor>();
        int status=0;
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from doctor where DoctorType='"+doctype+"' ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Doctor dr1=new Doctor();
               dr1.setDocid(rs.getInt(1));
               dr1.setFname(rs.getString(5));
               dr1.setLname(rs.getString(6));
               dr1.setUsername(rs.getString(7));
               
        
            
             
               // e.setDeceased(rs.getString(11));
               
               
                
                list.add(dr1);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
        
        
    }
      
      public static List<DoctorDateTime>getDocTimeDate(int docid){
       
        List<DoctorDateTime> list= new ArrayList<DoctorDateTime>();
        int status=0;
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from doctordatetime where DoctorID='"+docid+"' ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                DoctorDateTime dt=new DoctorDateTime();
               dt.setDocid(rs.getInt(2));
               dt.setDate(rs.getString(3));
               dt.setTime(rs.getString(4));
          
               
        
            
             
               // e.setDeceased(rs.getString(11));
               
               
                
                list.add(dt);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
        
        
    }
      
      public int checkAppointmentss() throws ClassNotFoundException, ClassNotFoundException, SQLException
    { 
         
            Statement ps=getConnection().createStatement();
             
            String query = "SELECT COUNT(*) FROM appointment";
            
            ResultSet rs = ps.executeQuery(query);
            rs.next();
            int count = rs.getInt(1);
            count = count + 1;
            
            Appointments ap3 = new Appointments();
            ap3.setCount(count);
            ap3.getCount();
         
            return count;
       
    }  
      
      
      
        public static List<Appointments>checkAppointments() throws ClassNotFoundException, SQLException{
       
        List<Appointments> list= new ArrayList<Appointments>();
       
            
            Connection con = DBConnection.getConnection();
            Statement ps=getConnection().createStatement();
             
            String query = "SELECT COUNT(*) FROM appointment";
            
            ResultSet rs = ps.executeQuery(query);
            rs.next();
            int count = rs.getInt(1);
            count = count + 1;
            
            Appointments ap3 = new Appointments();
            ap3.setCount(count);
            ap3.getCount();
          
               
        
            
             
               // e.setDeceased(rs.getString(11));
               
               
                
                list.add(ap3);
                
                
                
            
            con.close();
      
        return list;
        
        
        
    }
     
        
         public static List<Patient>getPatientID(String email){
       
        List<Patient> list= new ArrayList<Patient>();
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from patient where email ='"+email+"'  ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Patient plog=new Patient();
               
                plog.setPid(rs.getInt(1));
               
                
               // e.setDeceased(rs.getString(11));
               
                
                
                list.add(plog);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
    }
        
         
          public static List<Doctor>getDoctorName(int docid){
       
        List<Doctor> list= new ArrayList<Doctor>();
        int status=0;
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from doctor where DoctorID='"+docid+"' ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Doctor doc2=new Doctor();
               
               doc2.setFname(rs.getString(7));
               doc2.setLname(rs.getString(6));
              
               
        
            
             
               // e.setDeceased(rs.getString(11));
               
               
                
                list.add(doc2);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
        
        
    }
          
              public static List<Appointments>getBookedAppointments(int patientid){
       
        List<Appointments> list= new ArrayList<Appointments>();
        try{
            
            Connection con = DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from appointment where PatientID='"+patientid+"' ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Appointments bookap=new Appointments();
                //e.setNic(rs.getString(1));
               
                bookap.setLineno(rs.getInt(1));
                bookap.setPid(rs.getInt(2));
                bookap.setDocid(rs.getInt(3));
                bookap.setDate(rs.getString(4));
                bookap.setTime(rs.getString(5));
                bookap.setPharmacy(rs.getString(6));
                bookap.setAptid(rs.getInt(7));
               
                
                
                list.add(bookap);
                
                
                
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
        
    }
              
              

     

     
}
