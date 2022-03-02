package com.programming.services;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

@Service
public class IpInfoService {

    //Get Public Ip Address from https://www.myip.com/
    public String getIp() throws IOException {
        Document doc = Jsoup.connect("https://www.myip.com/").get();
        //System.out.println(doc.getElementById("ip"));
        return doc.getElementById("ip").text();
    }

    //Get Ip Information From https://ipinfo.io/
    public String getData(String ip){
        String response = "";
        URL url;

        try{
            String a = "https://ipinfo.io/"+ip+"/json";
            url = new URL(a);
            URLConnection con = url.openConnection();
            BufferedReader br =  new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            while ((inputLine = br.readLine())!=null){
                response = response + inputLine;
            }
            br.close();
        } catch (IOException e){
            e.printStackTrace();
        }

        return response;
    }


    //Get Country Image
    public String getCountryImage(String country){
/*
        Get Country Flags
        var countrycodedict = {
            'United States': 'us'
            // ... fill in
        };

        function getCountryCode(countryName) {
            return 'https://lipis.github.io/flag-icon-css/flags/4x3/'+countrycodedict[countryName]+'.svg';
        }
         */

        return "https://countryflagsapi.com/png/morocco";
    }
}
