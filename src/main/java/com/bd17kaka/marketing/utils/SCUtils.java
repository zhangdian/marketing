package com.bd17kaka.marketing.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONObject;

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
	
	public static JSONObject sendMailUsingSC(
			String apiUser, 
			String apiKey, 
			String from, 
			String to, 
			String label,
			String subject,
			String templateInvokeName,
			String respEmailId
			) {
		String url = "https://sendcloud.sohu.com/webapi/mail.send_template.json";
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
		nvps.add(new BasicNameValuePair("resp_email_id", respEmailId));

		try {
			httpost.setEntity(new UrlEncodedFormEntity(nvps, "UTF-8"));
			// 请求
			HttpResponse response = httpclient.execute(httpost);
			// 处理响应
			if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) { // 正常返回
				// 读取xml文档
				String result = EntityUtils.toString(response.getEntity());
				return JSONObject.fromObject(result);
			} 
			
		} catch (UnsupportedEncodingException e) {
		} catch (ClientProtocolException e) {
		} catch (IOException e) {
		}
		
		return null;
	}
	
	public static void main(String[] args) {
		/**
		 * to=bd17kaka_list1@zhangdian123.sendcloud.org&use_maillist=true&label=308&subject=testMarketing&template_invoke_name=bd17kaka_model2&resp_email_id=true
		 */
		System.out.println(sendMailUsingSC("postmaster@zhangdian234.sendcloud.org", "Tv5hT89C", 
				"zhangdian@163.com", "bd17kaka_list1@zhangdian123.sendcloud.org", "308", "testMarketing", "bd17kaka_model2", "true"));
		
	}
}
