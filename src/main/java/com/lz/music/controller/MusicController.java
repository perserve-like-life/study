package com.lz.music.controller;

import com.lz.music.entity.Music;
import com.lz.music.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

/**
 * @PACKAGE com.lz.music.controller.MusicController
 * @DATE 2019/10/8 20:11
 * @AUTHOR LZ
 * @EFFECT
 **/
@Controller
@RequestMapping("music")
public class MusicController {
    public static void main(String[] args) throws Exception {
        //服务的地址
        URL wsUrl = new URL("http://localhost:8080/com/nz/service/HelloWord");
        HttpURLConnection conn = (HttpURLConnection) wsUrl.openConnection();
        conn.setDoInput(true);
        conn.setDoOutput(true);
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-Type", "text/xml;charset=UTF-8");
        OutputStream os = conn.getOutputStream();
        //请求体
        String soap = "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:q0=\"http://ws.itcast.cn/\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">" +
                "<soapenv:Body> <q0:sayHello><arg0>aaa</arg0>  </q0:sayHello> </soapenv:Body> </soapenv:Envelope>";
        os.write(soap.getBytes());
        InputStream is = conn.getInputStream();
        byte[] b = new byte[1024];
        int len = 0;
        String s = "";
        while ((len = is.read(b)) != -1) {
            String ss = new String(b, 0, len, "UTF-8");
            s += ss;
        }
        System.out.println(s);
        is.close();
        os.close();
        conn.disconnect();
    }

    @Autowired
    private MusicService musicService;

    /**
     * 跳转展示页面
     *
     * @return
     */
    @RequestMapping("show")
    public String show() {
        return "show";
    }

    /**
     * 查询歌曲
     *
     * @return 全部数据
     */
    @RequestMapping("list")
    @ResponseBody
    public List<Music> list() {
        List<Music> list = this.musicService.list();
        return list;
    }

}
