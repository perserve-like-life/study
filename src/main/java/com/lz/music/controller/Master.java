package com.lz.music.controller;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

/**
 * @PACKAGE com.lz.music.controller.Master
 * @DATE 2019/10/8 20:11
 * @AUTHOR LZ
 * @EFFECT
 **/
@WebService
public class Master implements Mest {
    /*public static void main(String[] args) throws IOException {
        URL url=new URL("http://ws.webxml.com.cn/WebServices/MobileCodeWS.asmx/getMobileCodeInfo?mobileCode="+"18838083415"+
                "&userID=");
        HttpURLConnection conn=(HttpURLConnection) url.openConnection();
        conn.setConnectTimeout(5000);
        conn.setRequestMethod("GET");
        if(conn.getResponseCode()==HttpURLConnection.HTTP_OK){
            InputStream is=conn.getInputStream();
            ByteArrayOutputStream boas=new ByteArrayOutputStream();
            byte[] buffer=new byte[1024];
            int len=-1;
            while((len=is.read(buffer))!=-1){
                boas.write(buffer, 0, len);
            }
            System.out.println("GET请求获取的数据:"+boas.toString());
            boas.close();
            is.close();
        }
    }*/
    //发布服务地址
    private static String addr = "http://localhost:8080/lz";

    public static void main(String[] args) {
        // 获取具体的实现类
        Master hw = new Master();
        // 发布服务
        Endpoint.publish(addr, hw);
    }
    @WebMethod
    @Override
    public String name() {
        return "好吧";
    }
}
