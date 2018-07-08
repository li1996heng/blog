package cn.bigwel.controller;

import com.qq.connect.QQConnectException;
import com.qq.connect.api.OpenID;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.oauth.Oauth;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class AfterLogin {

	@RequestMapping(value="/afterlogin.do")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		try {
			AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(request);
			String accessToken = null, openID = null;
			if (accessTokenObj.getAccessToken().equals("")) {
				System.out.print("没有获取到响应参数");
				return "error";
			} else {
				accessToken = accessTokenObj.getAccessToken();
				session.setAttribute("accessToken",
						accessToken);
				// 利用获取到的accessToken 去获取当前用的openid
				OpenID openIDObj = new OpenID(accessToken);
				openID = openIDObj.getUserOpenID();
				session.setAttribute("openID", openID);
				return "success";
			}
		} catch (QQConnectException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}


	@RequestMapping(value="/authorizeUrl")
	public void inQQ(Model model, HttpServletResponse response,
					 HttpServletRequest request) {
		try {
			response.sendRedirect(new Oauth().getAuthorizeURL(request));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (QQConnectException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}