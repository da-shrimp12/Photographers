/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Contact;
import entity.Gallery;
import entity.Image;
import entity.Share;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ducanh
 */
public class DAO  {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Share> getShare() {
        List<Share> list = new ArrayList<>();
        String query = "select * from share";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Share(rs.getString("ICON"),
                        rs.getString("socialNetwork"),
                        rs.getString("url")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Gallery> getTop3() {
        List<Gallery> list = new ArrayList<>();
        String query = "select top 3 * from galery order by id asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Gallery(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Contact getContact() {
        String query = "select * from contact";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Contact(rs.getString("telephone"),
                        rs.getString("email"),
                        rs.getString("about"),
                        rs.getString("address"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getString("map_url"),
                        rs.getString("image_main"));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Gallery> pagingGallery(int index, int size) {
        List<Gallery> list = new ArrayList<>();
        String query = "select * from galery\n"
                + "ORDER BY id OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * size);
            ps.setInt(2, size);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Gallery(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int countGallery() {
        String query = "select count(*) from galery";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
	
    public void updateView() {
        String query = "update [view] set [view] = [view]+1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int countView() {
        String query = "select * from [view]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public Image listImgByID(int gid) {
        String query = "select top 1 * from image\n"
                + "where galery_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, gid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Image(rs.getInt("id"),
                        rs.getString("image_url"));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Gallery getByID(int id) throws Exception {
        String query = "select * from galery where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Gallery(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (Exception e) {
            throw e;
        }
        return null;
    }

	public List<Image> getImage(int id) throws Exception {
        List<Image> list = new ArrayList<>();
        String query = "select * from [image]\n"
                + "                where galery_id = ?";
               
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Image(rs.getInt("id"), rs.getString("image_url")));
            }
        } catch (Exception e) {
            throw e;
        }
        return list;
    }

    public static void main(String[] args) {
        try {
            DAO dao = new DAO();
            List<Share> listS = dao.getShare();
            List<Gallery> listG = dao.getTop3();
            Contact contact = dao.getContact();
//            List<Gallery> listPaging = dao.pagingGallery2(1, 3);
            Gallery g = dao.getByID(1);
//        System.out.println(listImage);
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
