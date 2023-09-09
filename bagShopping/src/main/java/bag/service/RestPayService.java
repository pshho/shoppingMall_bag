package bag.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import bag.model.OrderDTO;

@Service
public class RestPayService {
	@Autowired
	RestTemplate restTemplate;
	
	public Object accessToken() {
		String url = "https://api.iamport.kr/users/getToken";
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		Map<String, Object> payData = new HashMap<>();
		payData.put("imp_key", "7132411220341275");
		payData.put("imp_secret", "ki985QvXQj0QDBFO2loxdxXDpk2xGcKH6WyuyoHGO4bHxmFyjvpyYvoNfTO9VzUrJv2rvD2O9wfFwmyG");
		
		HttpEntity<Map<String, Object>> reqPay = new HttpEntity<Map<String,Object>>(payData, headers);
		
		Object response = restTemplate.postForObject(url, reqPay, Object.class);
		
		return response;
	}
	
	public Object preparePay(OrderDTO ordDTO, String key) {
		String url = "https://api.iamport.kr/payments/prepare";
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("Authorization", key);
		
		Map<String, Object> payData = new HashMap<>();
		payData.put("merchant_uid", ordDTO.getMerchant_uid());
		payData.put("amount", ordDTO.getOrdersTotalPrice());
		
		HttpEntity<Map<String, Object>> reqPay = new HttpEntity<Map<String,Object>>(payData, headers);
		
		Object response = restTemplate.postForObject(url, reqPay, Object.class);
		
		return response;
	}
	
	public Object afterPay(OrderDTO ordDTO, String key) {
		String url = "https://api.iamport.kr/payments/"+ordDTO.getImp_uid();
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("Authorization", key);
		
		Map<String, Object> payData = new HashMap<>();
		payData.put("imp_uid", ordDTO.getImp_uid());
		
		HttpEntity<Void> reqPay = new HttpEntity<>(headers);
		
		Object response = restTemplate.exchange(url, HttpMethod.GET, reqPay, Object.class).getBody();
		
		return response;
	}
}
