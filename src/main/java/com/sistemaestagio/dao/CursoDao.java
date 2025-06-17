package com.sistemaestagio.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sistemaestagio.bean.Curso;

public class CursoDao {
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sistemaestagio","root","");		
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;		
	}

	 public static List<Curso> getAllCursos() {
	        List<Curso> list = new ArrayList<Curso>();
	        try {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM cursos");
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                Curso curso = new Curso();
	                curso.setId(rs.getInt("ID"));
	                curso.setNome(rs.getString("NOME"));
	                curso.setInstituicao(rs.getString("INSTITUICAO"));
	                curso.setSemestre(rs.getInt("SEMESTRE"));
	                list.add(curso);
	            }
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return list;
	    }
	 
	 public static int addCurso(Curso c) {
	        int status = 0;
	        try {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement(
	                "INSERT INTO cursos (NOME, INSTITUICAO, SEMESTRE) VALUES (?, ?, ?)");
	            ps.setString(1, c.getNome());
	            ps.setString(2, c.getInstituicao());
	            ps.setInt(3, c.getSemestre());
	            status = ps.executeUpdate();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return status;
	    }
	    
	 public static Curso getCursoById(int id) {
		    Curso curso = null;
		    try {
		        Connection con = getConnection();
		        PreparedStatement ps = con.prepareStatement("SELECT * FROM cursos WHERE id = ?");
		        ps.setInt(1, id);
		        ResultSet rs = ps.executeQuery();
		        if (rs.next()) {
		            curso = new Curso();
		            curso.setId(rs.getInt("id"));
		            curso.setNome(rs.getString("nome"));
		            curso.setInstituicao(rs.getString("instituicao"));
		            curso.setSemestre(rs.getInt("semestre"));
		        }
		        con.close();
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return curso;
		}
	    public static int deleteCurso(Curso c) {
	        int status = 0;
	        try {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement("DELETE FROM cursos WHERE ID = ?");
	            ps.setInt(1, c.getId());
	            status = ps.executeUpdate();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return status;
	    }
	    
	    
	    
	    public static List<Curso> getCursosByPage(int page, int pageSize) {
	        List<Curso> list = new ArrayList<>();
	        try {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement(
	                "SELECT * FROM cursos LIMIT ? OFFSET ?"
	            );
	            ps.setInt(1, pageSize);
	            ps.setInt(2, (page - 1) * pageSize);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                Curso curso = new Curso();
	                curso.setId(rs.getInt("ID"));
	                curso.setNome(rs.getString("NOME"));
	                curso.setInstituicao(rs.getString("INSTITUICAO"));
	                curso.setSemestre(rs.getInt("SEMESTRE"));
	                list.add(curso);
	            }
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return list;
	    }
  
	    
	    
	    public static int getCursoCount() {
	        int count = 0;
	        try {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) FROM cursos");
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                count = rs.getInt(1);
	            }
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return count;
	    }
	   public static int updateCurso(Curso c) {
	        int status = 0;
	        try {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement(
	                "UPDATE cursos SET nome = ?, instituicao = ?, semestre = ? WHERE id = ?"
	            );
	            ps.setString(1, c.getNome());
	            ps.setString(2, c.getInstituicao());
	            ps.setInt(3, c.getSemestre());
	            ps.setInt(4, c.getId());

	            status = ps.executeUpdate();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return status;
	    }

	    

	
}
