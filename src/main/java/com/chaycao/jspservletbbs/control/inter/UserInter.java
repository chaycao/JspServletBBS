package com.chaycao.jspservletbbs.control.inter;

import com.chaycao.jspservletbbs.bean.User;

/**
 * Created by chaycao on 2017/7/9.
 */
public interface UserInter {
    /**
     * 注册
     * @param user
     * @return
     */
    public boolean register(final User user);

    /**
     * 登录
     * @param userName
     * @param userPassword
     * @return
     */
    public User login(final String userName, final String userPassword);


}
