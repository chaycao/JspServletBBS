package com.chaycao.jspservletbbs.control.impl;

import com.chaycao.jspservletbbs.bean.User;
import com.chaycao.jspservletbbs.control.inter.UserInter;
import com.chaycao.jspservletbbs.util.DBUtil;

import java.sql.*;

/**
 * Created by chaycao on 2017/7/9.
 */
public class UserImpl implements UserInter {

    /**
     * 单例模式
     */
    public final static UserImpl INSTANCE = new UserImpl();

    public UserImpl() {}

    /**
     * 注册
     * @param user
     * @return
     */
    public boolean register(final User user) {
        Connection con = DBUtil.getConn();
        String sql = "INSERT INTO user(id, user_name, user_password) values (null, ?, ?)";
        PreparedStatement ps = null;
        boolean success = false;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getUserPassword());
            success = ps.executeUpdate() > 0 ? true : false;
            ps.close();
            DBUtil.close(con, null, ps, null);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return success;
    }

    public User login(String userName, String userPassword) {
        Connection con = DBUtil.getConn();
        String sql = "SELECT * FROM user WHERE user_name = '"
                + userName + "' AND user_password = '" + userPassword + "'";
        ResultSet rs = null;
        User user = null;
        try {
            // 查询
            Statement st = con.createStatement();
            rs = DBUtil.executeQuery(st, sql);

            // 处理结果
            if(rs != null)
            {
                while (rs.next()){
                    int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String password = rs.getString(3);
                    user = new User(id, name, password);
                }
            }

            // 关闭连接
            DBUtil.close(con, st, null, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
