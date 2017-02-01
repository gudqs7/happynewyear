package cn.guddqs.newyear.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.guddqs.newyear.LuckService;

@Controller
public class LuckControll {

	@Autowired
	private LuckService luckService;

	@SuppressWarnings("unchecked")
	@RequestMapping("/submit")
	@ResponseBody
	public void doSummit(String qqno, HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		ServletContext application = request.getServletContext();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (qqno != null) {
			System.out.println(qqno);

			List<String> qqlist = (List<String>) application.getAttribute("qqlist");
			if (qqlist == null) {
				qqlist = new ArrayList<String>();
				qqlist.add(qqno);
				Integer num = (Integer) session.getAttribute("lucknum");
				if (num == null) {
					out.print("然而我早已猜透一切,你并未抽奖!");
				} else {
					session.invalidate();
					luckService.SendMail(qqno, num);
					out.print("<h1>好的,已经提交了!!</h1>");
				}
				System.out.println("Submit:-->QQ:" + qqno + "Num:" + num);
			} else {
				if (qqlist.contains(qqno)) {
					out.print("别逗,想卡bug也换个QQ好不?");
				} else {
					qqlist.add(qqno);
					Integer num = (Integer) session.getAttribute("lucknum");
					if (num == null) {
						out.print("然而我早已猜透一切,你并未抽奖!");
					} else {
						session.invalidate();
						luckService.SendMail(qqno, num);
						out.print("<h1>好的,已经提交了!!</h1>");
					}
					System.out.println("Submit:-->QQ:" + qqno + "Num:" + num);
				}
			}
			application.setAttribute("qqlist", qqlist);
		} else {
			out.print("然而我早已猜透一切!");
		}

	}

}
