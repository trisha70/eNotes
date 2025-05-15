package com.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.UserDetails;
import com.User.Post;

public class PostDAO {
   private Connection conn;
   public PostDAO(Connection conn) {
		super();
		this.conn = conn;
	}
   public boolean AddNotes(String ti,String co,int ui) {
	   boolean f=false;
	   try {
		   String qu="INSERT INTO notes(title,content,uid) VALUES(?,?,?)";
		   PreparedStatement ps=conn.prepareStatement(qu);
		   ps.setString(1, ti);
		   ps.setString(2,co);
		   ps.setInt(3, ui);
		   System.out.println(ps);
		   int i=ps.executeUpdate();
		   if(i == 1) {
			   f=true;
		   }

	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   return f;
   }
   
   public List<Post> getData(int id){
	   List<Post> list=new ArrayList<Post>();
	   Post po=null;
	   try {
		   String qu="select * from notes where uid=? order by id DESC";
		   PreparedStatement ps=conn.prepareStatement(qu);
		   ps.setInt(1,id);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next()) {
			   po=new Post();
			   po.setId(rs.getInt(1));
			   po.setTitle(rs.getString(2));
			   po.setContent(rs.getString(3));
			   po.setPdate(rs.getTimestamp(4));
			   list.add(po);
		   }
		   
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   
	   
	   return list;
   }
   
   public Post getDataById(int noteId) {
	   Post p=null;
	   try {
		   String qu="select * from notes where id=?";
		   PreparedStatement ps=conn.prepareStatement(qu);
		   ps.setInt(1, noteId);
		   ResultSet rs=ps.executeQuery();
		   if(rs.next()) {
			   p=new Post();
			   p.setId(rs.getInt(1));
			   p.setTitle(rs.getString(2));
			   p.setContent(rs.getString(3));
		   }
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   return p;
   }
   public boolean PostUpdate(int nid,String ti,String co) {
	   boolean f=false;
	   try {
		   String qu="update notes set title=?,content=? where id=?";
		   PreparedStatement ps=conn.prepareStatement(qu);
		   ps.setString(1, ti);
		   ps.setString(2, co);
		   ps.setInt(3,nid);
		   int i=ps.executeUpdate();
		   if(i==1) {
			   f=true;
		   }
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   return f;
	   
   }
    public boolean DeleteNotes(int nid) {
    	boolean f=false;
    	try {
    		String  qu="delete from notes where id=?";
    		PreparedStatement ps=conn.prepareStatement(qu);
    		ps.setInt(1, nid);
    		int x=ps.executeUpdate();
    		if(x==1) {
    			f=true;
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return f;
    }
}
