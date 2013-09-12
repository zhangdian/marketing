package com.bd17kaka.marketing.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;



public class SCUtils {
	
	private static int SC_STATUS_SUCCESS = 0;
	private static int SC_STATUS_FAIL= 1;
	
	public static int sendMailUsingSC(
			String apiUser, 
			String apiKey, 
			String from, 
			String to, 
			String label,
			String subject,
			String templateInvokeName,
			String respEmailId
			) {
		String url = "https://sendcloud.sohu.com/webapi/mail.send_template.xml";
		HttpClient httpclient = new DefaultHttpClient();
		// httpclient = wrapHttpClient(httpclient);
		HttpPost httpost = new HttpPost(url);

		List nvps = new ArrayList();
                //不同于登录SendCloud站点的帐号，您需要登录后台创建发信子帐号，使用子帐号和密码才可以进行邮件的发送。
		nvps.add(new BasicNameValuePair("api_user", apiUser));
		nvps.add(new BasicNameValuePair("api_key", apiKey));
		nvps.add(new BasicNameValuePair("from", from));
		nvps.add(new BasicNameValuePair("to", to));
		nvps.add(new BasicNameValuePair("use_maillist", "true"));
		nvps.add(new BasicNameValuePair("label", label));
		nvps.add(new BasicNameValuePair("subject", subject));
		nvps.add(new BasicNameValuePair("template_invoke_name", templateInvokeName));  
		nvps.add(new BasicNameValuePair("resp_email_id", "true"));

		try {
			httpost.setEntity(new UrlEncodedFormEntity(nvps, "UTF-8"));
			// 请求
			HttpResponse response = httpclient.execute(httpost);
			// 处理响应
			if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) { // 正常返回
				// 读取xml文档
				String result = EntityUtils.toString(response.getEntity());
				System.out.println(result);
			} else {
				System.err.println("error");
			}
			
		} catch (UnsupportedEncodingException e) {
		} catch (ClientProtocolException e) {
		} catch (IOException e) {
		}
		
		System.out.println("success");
		return SCUtils.SC_STATUS_SUCCESS;
		
	}
}
