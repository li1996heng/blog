package cn.bigwel.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.bigwel.entity.User;
import cn.bigwel.entity.UserInfo;
import cn.bigwel.service.IUserInfoService;
import cn.bigwel.service.IUserService;

@Controller
public class UserController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IUserInfoService userInfoService;

	@RequestMapping(value = "login")
	public String login(@ModelAttribute User user, HttpSession session) {
		User userLogin = userService.login(user);
		if (userLogin != null) {
			//根据外键查询UserInfo表的详细信息
			UserInfo userInfo = userInfoService.getUserInfoByuID(userLogin.getId());
			session.setAttribute("userInfo", userInfo);
			session.setAttribute("error", "");
			return "redirect:/blog/index/1";
		} else {
			session.setAttribute("error", "对不起用户名或密码输入错误。若您确认输入正确，则可能是您已被管理员封号");
			return "redirect:/blog/toLogin";
		}
	}
}
