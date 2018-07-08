package cn.bigwel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.bigwel.entity.BigTypeBlog;
import cn.bigwel.entity.BlogInfo;
import cn.bigwel.entity.SmallTypeBlog;
import cn.bigwel.service.IBigTypeBlogService;
import cn.bigwel.service.IBlogInfoService;
import cn.bigwel.service.ISmallTypeBlogService;

@Controller
@RequestMapping("/blog")
public class BlogInfoController {

	@Autowired
	private IBlogInfoService blogInfoService;

	@Autowired
	private IBigTypeBlogService bigTypeService;

	@Autowired
	private ISmallTypeBlogService smallTypeBlogService;

	/**
	 * 进入主界面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/index/{currentPage}")
	public String toIndex(Model model,@PathVariable("currentPage") Integer currentPage) {
		if(currentPage == null) {
			currentPage = 1;
		}
		PageHelper.startPage(currentPage,10);
		// 加载博客数据前十记录 按更新时间排序
		List<BlogInfo> blogInfoOrderByPage = blogInfoService.getBlogInfoOrderByTime();
		PageInfo<BlogInfo> pageInfo = new PageInfo<BlogInfo>(blogInfoOrderByPage);
		model.addAttribute("blogInfoList",blogInfoOrderByPage);
		model.addAttribute("pageInfo",pageInfo);
		return "/home/index";
	}

	/**
	 * 进入登录界面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toLogin")
	public String toLogin() {
		return "/home/login";
	}

	/**
	 * 根据Id得到博客的详细信息
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getOneBlogInfoById/{id}")
	public String getOneBlogInfoById(@PathVariable("id") Integer id, Model model) {
		BlogInfo oneBlogInfoById = blogInfoService.getOneBlogInfoById(id);
		model.addAttribute("oneBlogInfoById", oneBlogInfoById);
		// 把博客信息中小类信息的外键 bid作为查询大类的条件 得到的大类信息 传入前台的作为导航数据
		BigTypeBlog navBigTypeBlog = bigTypeService.getBigTypeBlogById(oneBlogInfoById.getSmallTypeBlog().getBid());
		model.addAttribute("navBigTypeBlog", navBigTypeBlog);
		return "/home/blog";
	}

	/**
	 * 根据大类ID查询
	 * 
	 * @param id
	 *            大类id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getBlogInfoByBigType/{id}/{currentPage}")
	public String getBlogInfoByBigType(@PathVariable("id") Integer id,@PathVariable("currentPage") Integer currentPage, Model model) {
		List<BlogInfo> blogInfoByBigTypeBlogId = blogInfoService.getBlogInfoByBigTypeBlogId(id,currentPage);
		PageInfo<BlogInfo> pageInfo = new PageInfo<BlogInfo>(blogInfoByBigTypeBlogId);
		
		// 根据大类id查询大类名称 传入前台作为导航数据
		BigTypeBlog navBigTypeBlog = bigTypeService.getBigTypeBlogById(id);
		model.addAttribute("navBigTypeBlog", navBigTypeBlog);
		model.addAttribute("navsmallTypeBlog", null);
		model.addAttribute("blogInfoByBigType", blogInfoByBigTypeBlogId);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("flag",0);
		return "home/blogClass";
	}

	/**
	 * 根据小类ID查询博客信息
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getBlogInfoBySmallType/{id}/{currentPage}")
	public String getBlogInfoBySmallTypeBlog(@PathVariable("id") Integer id,
			@PathVariable("currentPage") Integer currentPage, Model model) {
		List<BlogInfo> blogInfoBySmallTypeBlogId = blogInfoService.getBlogInfoBySmallTypeBlogId(id,currentPage);
		//封装分页信息
		PageInfo<BlogInfo> pageInfo = new PageInfo<BlogInfo>(blogInfoBySmallTypeBlogId);
		
		SmallTypeBlog navsmallTypeBlog = smallTypeBlogService.getSmallTypeBlogById(id);
		BigTypeBlog navBigTypeBlog = bigTypeService.getBigTypeBlogById(navsmallTypeBlog.getBid());
		model.addAttribute("navBigTypeBlog", navBigTypeBlog);
		model.addAttribute("navsmallTypeBlog", navsmallTypeBlog);
		model.addAttribute("blogInfoByBigType", blogInfoBySmallTypeBlogId);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("flag",1);
		return "home/blogClass";
	}
}
