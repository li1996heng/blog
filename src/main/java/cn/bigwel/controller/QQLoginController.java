package cn.bigwel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qq.connect.oauth.Oauth;

@Controller
@RequestMapping(value="/blog/QQLogin.do")
public class QQLoginController {
	@RequestMapping
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = new Oauth().getAuthorizeURL(request);
		return "redirect:"+url;
	}
}
