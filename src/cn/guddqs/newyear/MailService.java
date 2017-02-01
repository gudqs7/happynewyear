package cn.guddqs.newyear;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	
	@Autowired
	private JavaMailSender mailSender;

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	
	public void sendMessage(String somebody,String money) throws Exception{
		MimeMessage mailMessage=mailSender.createMimeMessage();
		
		MimeMessageHelper helper=new MimeMessageHelper(mailMessage);
		
		helper.setTo("768446359@qq.com");
		helper.setFrom("guddqs@126.com");
		helper.setSubject("[猴哥电脑城] : 点击链接激活账号!");
		helper.setText("QQ:"+somebody+",中奖了,中奖金额为: "+money+"  !",false);
		mailSender.send(mailMessage);
		System.out.println("发送成功"+somebody);
	}
	
}
