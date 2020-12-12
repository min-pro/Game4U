package com.ddit.game4u.utils;

import java.util.Properties;
import java.util.UUID;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmailUtil {
	
	public static String sendAuthNum(String email) {
		
		final String sender = "dlsgur2323@gmail.com"; //발신자의 이메일 아이디를 입력
		final String password = "creksqwwxipdkpna";         //발신자 이메일의 패스워드를 입력

		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com"); 
		prop.put("mail.smtp.port", 465); 
		prop.put("mail.smtp.auth", "true"); 
		prop.put("mail.smtp.ssl.enable", "true"); 
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		String authNum = makeAuthNum();
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(sender, password);
            }
        });

		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(sender));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); 

            // Subject
            message.setSubject("Game4U에서 보낸 인증번호 입니다."); //메일 제목을 입력
            
            // Text
            message.setText("인증번호 : " + authNum);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		
		return authNum;
	}

	private static String makeAuthNum() {
		String authNum = UUID.randomUUID().toString().replace("-", "").substring(6);
		return authNum;
	}
	
	
}
