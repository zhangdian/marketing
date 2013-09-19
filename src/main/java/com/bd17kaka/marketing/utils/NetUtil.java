package com.bd17kaka.marketing.utils;

import java.io.IOException;

import net.sf.json.JSON;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;


public class NetUtil {
	
	public static JSONObject getRequest(String strUrl) {
		
		HttpGet httpRequest = new HttpGet(strUrl);  
		
		try {  
            HttpResponse httpResponse = new DefaultHttpClient().execute(httpRequest);  
            int statusCode = httpResponse.getStatusLine().getStatusCode();  
            if (HttpStatus.SC_OK == statusCode) {  
                String result = EntityUtils.toString(httpResponse.getEntity());
                return JSONObject.fromObject(result);
            }  
        } catch (ClientProtocolException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } catch (JSONException e) {  
            e.printStackTrace();  
        }  
        return null;  
		
	}
	
	public static void main(String[] args) {
		
		System.out.println(NetUtil.getRequest("https://sendcloud.sohu.com/webapi/list.get.json?api_user=postmaster@zhangdian234.sendcloud.org&api_key=Tv5hT89C&address=bd17kaka_list1@zhangdian123.sendcloud.org"));
		
	}
	
}
