package com.up.utils;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;

/**
 * @PACKAGE com.up.utils.Massage
 * @DATE 2019/10/7 9:51
 * @AUTHOR LZ
 * @EFFECT
 **/

public class Massage {
    // 产品名称
    private static final String product = "Dysmsapi";
    // 产品域名
    private static final String domain = "dysmsapi.aliyuncs.com";
    private static final String accessKeyId = "LTAIdwxIOKhrVmAJ";
    private static final String accessKeySecret = "wF6JfwLlHt5MH37kjD9XR3BBIvPtpA";

    public static SendSmsResponse sendSms(String telephone, String code) throws ClientException {
        // 可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        // 初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        // 组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        // 待发送手机号
        request.setPhoneNumbers(telephone);
        // 短信签名
        request.setSignName("javaStudyUse");
        // 短信模板
        request.setTemplateCode("SMS_172598255");
        request.setTemplateParam("{\"code\":\"" + code + "\"}");
        request.setOutId("yourOutId");
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
        if(sendSmsResponse.getCode()!= null && sendSmsResponse.getCode().equals("OK")){
            System.out.println("发送成功!");
        }else {
            System.out.println("发送失败!");
        }
        return sendSmsResponse;
    }
    public static void main(String[] args) throws ClientException, InterruptedException {
        String chars = "0123456789";
//      String chars = "abcdefghijklmnopqrstuvwxyz";
//      String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String code = "";
        for (int i = 0; i < 6; i++) {
            code += chars.charAt((int)(Math.random() * 10));
        }
        System.out.println("发送的验证码为:" + code);
        //String lowerCase = f.toLowerCase();
        sendSms("15239113203", code);
//      sendSms(手机号, 验证码);
//        SendSmsResponse response = sendSms("15239113203", code);
//        System.out.println("短信接口返回的数据----------------");
//        System.out.println("Code=" + response.getCode());
//        System.out.println("Message=" + response.getMessage());
//        System.out.println("RequestId=" + response.getRequestId());
//        System.out.println("BizId=" + response.getBizId());
    }
}

