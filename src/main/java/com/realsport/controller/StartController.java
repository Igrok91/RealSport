package com.realsport.controller;

import com.google.gson.Gson;
import com.realsport.model.dao.daoException.DataBaseException;
import com.realsport.model.entityDao.pojo.Basketball;
import com.realsport.model.entityDao.pojo.Playfootball;
import com.realsport.model.entityDao.pojo.Voleyball;
import com.realsport.model.service.PlaygroundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Igor on 31.03.2017.
 */
@Controller
public class StartController {
    @Autowired
    private PlaygroundService playgroundService;

    @Autowired
    private HttpSession httpSession;

    @RequestMapping(value = "/start")
    public String onStart(){
        return "start";
    }

    @RequestMapping(value = "/maps")
    public String onMap(Model model){
        List<Playfootball> playfootballList = null;
        List<Voleyball> voleyballList = null;
        List<Basketball> basketballList = null;
        try {
            playfootballList = playgroundService.getFootballPlayground();
            voleyballList = playgroundService.getVoleyballPlayground();
            basketballList = playgroundService.getBasketballPlayground();
            ArrayList<String> footLocationList = getFootPlayground(playfootballList);
            ArrayList<String> basketLocationList = getBasketPlayground(basketballList);
            ArrayList<String> voleyLocationList = getVoleyPlayground(voleyballList);

            ArrayList<String> footInfoList = getFootInfoList(playfootballList);

            model.addAttribute("count", playfootballList.size());
            model.addAttribute("footLocation", footLocationList);
            model.addAttribute("basketLocation", basketLocationList);
            model.addAttribute("voleyLocation", voleyLocationList);
            model.addAttribute("footInfo", footInfoList);
        } catch (DataBaseException e) {
            e.printStackTrace();
        }

        return "maps";
    }

    private static ArrayList<String> getFootInfoList(List<Playfootball> playfootballList) {
        HashMap<String, Object> map = new HashMap<>();
        Gson gson = new Gson();
        ArrayList<String> mapArrayList= new ArrayList<>();
        for (Playfootball p : playfootballList){
            map.put("namePlayground", p.getName());
            map.put("image", p.getImage());
            map.put("info", p.getInfo());
            map.put("street", p.getStreet());
            map.put("house", p.getHouse());
            map.put("link", p.getLinks());
            String json = gson.toJson(map);
            mapArrayList.add(json);
            System.out.println("Link" + p.getLinks());
        }

        System.out.println(mapArrayList);
        return mapArrayList;
    }


    private static ArrayList<String> getFootPlayground(List<Playfootball> list){
        HashMap<String, Double> map = new HashMap<>();
        Gson gson = new Gson();
        ArrayList<String> mapArrayList= new ArrayList<>();
        for (Playfootball p : list) {
            map.put("lat", Double.parseDouble(p.getLatitude()));
            map.put("lng", Double.parseDouble(p.getLongitude()));
            String json = gson.toJson(map);
            mapArrayList.add(json);
        }
        System.out.println("Foot"+mapArrayList);
        return mapArrayList;
    }

    private static ArrayList<String> getBasketPlayground(List<Basketball> list){
        HashMap<String, Double> map = new HashMap<>();
        Gson gson = new Gson();
        ArrayList<String> mapArrayList= new ArrayList<>();
        for (Basketball p : list) {
            map.put("lat", Double.parseDouble(p.getLatitude()));
            map.put("lng", Double.parseDouble(p.getLongitude()));
            String json = gson.toJson(map);
            mapArrayList.add(json);
        }
        System.out.println("Basket" + mapArrayList);
        return mapArrayList;
    }

    private static ArrayList<String> getVoleyPlayground(List<Voleyball> list){
        HashMap<String, Double> map = new HashMap<>();
        Gson gson = new Gson();
        ArrayList<String> mapArrayList= new ArrayList<>();
        for (Voleyball p : list) {
            map.put("lat", Double.parseDouble(p.getLatitude()));
            map.put("lng", Double.parseDouble(p.getLongitude()));
            String json = gson.toJson(map);
            mapArrayList.add(json);
        }
        System.out.println("Voley" + mapArrayList);
        return mapArrayList;
    }

}
