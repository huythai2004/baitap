/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Department;
import model.Student;

/**
 *
 * @author ACER
 */
public class DAO extends DBContext {

    public List<Student> getAllStudents() {
        List<Student> list = new ArrayList<>();
        String sql = "select * from Students";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getString("sname"),
                        rs.getString("sdob"),
                        rs.getBoolean("sgender"),
                        rs.getInt("did"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Department> getAllDepartments() {
        List<Department> list = new ArrayList<>();
        String sql = "select * from Departments";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Department d = new Department(rs.getInt("did"),
                        rs.getString("dname"));
                list.add(d);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Student> getAllStudentsByDID(int id) {
        List<Student> list = new ArrayList<>();
        String sql = "select * from Students where 1=1";
        if (id != 0) {
            sql += " and did=" + id;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getString("sname"),
                        rs.getString("sdob"),
                        rs.getBoolean("sgender"),
                        rs.getInt("did"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        DAO d = new DAO();
        Student s = new Student("Student G", "2004-08-21", true, 1);
        d.addStudent(s);
    }

    public void addStudent(Student s) {
        String sql = "INSERT INTO [dbo].[Students]\n"
                + "           ([sname]\n"
                + "           ,[sdob]\n"
                + "           ,[sgender]\n"
                + "           ,[did])\n"
                + "     VALUES (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s.getSname());
            st.setString(2, s.getSdob());
            st.setBoolean(3, s.isSgender());
            st.setInt(4, s.getDid());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    
}
