package com.programming.controller;

import com.programming.services.IpInfoService;
import org.json.JSONObject;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.*;
import java.net.*;
import java.util.Enumeration;

@Controller
@RequestMapping("")
public class HomeController {

    @Autowired
    private IpInfoService ipInfoService;

    @RequestMapping("/")
    public String printHello(ModelMap modelMap){
        modelMap.addAttribute("hello","Hello World!");

        return "hello";
    }

    @RequestMapping("/location")
    public String showLocation(ModelMap modelMap) throws IOException, ParseException {

        String ip = ipInfoService.getIp();
        String data = ipInfoService.getData(ip);

        JSONObject obj = new JSONObject(data);
        System.out.println("\n\nYou are in or near the city of "
                + obj.getString("city")+ ", "+ obj.getString("country"));
        String mapLink = "https://www.google.com/maps/?q="
                +obj.getString("loc");

        System.out.println(mapLink);

        String countryImage = ipInfoService.getCountryImage(obj.getString("country"));
        modelMap.addAttribute("ip",ip);
        modelMap.addAttribute("city",obj.getString("city"));
        modelMap.addAttribute("region",obj.getString("region"));
        modelMap.addAttribute("country",obj.getString("country"));
        modelMap.addAttribute("loc",obj.getString("loc"));
        modelMap.addAttribute("org",obj.getString("org"));
        modelMap.addAttribute("timezone",obj.getString("timezone"));
        modelMap.addAttribute("mapLink",mapLink);
        modelMap.addAttribute("countryImage",countryImage);





        //Dns 8.8.8.8
        String dnsData = ipInfoService.getData("8.8.8.8");

        JSONObject dnsObj = new JSONObject(dnsData);

        String dnsMapLink = "https://www.google.com/maps/?q="
                +dnsObj.getString("loc");

        String dnsCountryImage = ipInfoService.getCountryImage(dnsObj.getString("country"));
        modelMap.addAttribute("dnsIp","8.8.8.8");
        modelMap.addAttribute("dnsHostName",dnsObj.getString("hostname"));
        modelMap.addAttribute("dnsAnyCast",dnsObj.getBoolean("anycast"));
        modelMap.addAttribute("dnsCity",dnsObj.getString("city"));
        modelMap.addAttribute("dnsRegion",dnsObj.getString("region"));
        modelMap.addAttribute("dnsCountry",dnsObj.getString("country"));
        modelMap.addAttribute("dnsLoc",dnsObj.getString("loc"));
        modelMap.addAttribute("dnsOrg",dnsObj.getString("org"));
        modelMap.addAttribute("dnsPostal",dnsObj.getString("postal"));
        modelMap.addAttribute("dnsMapLink",dnsMapLink);
        modelMap.addAttribute("dnsTimezone",dnsObj.getString("timezone"));
        modelMap.addAttribute("dnsCountryImage",dnsCountryImage);

        return "location";

    }

}
