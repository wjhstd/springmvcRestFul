package com.wjh.control;

import com.wjh.bean.User;
import com.wjh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserManageControl {
    @Autowired
    private UserService service;

    @RequestMapping(value = "/user/",method = RequestMethod.GET)
    public ResponseEntity<List<User>> selectAll(){
        List<User> users=service.selectAll();
       return new ResponseEntity<List<User>>(users, HttpStatus.OK);
    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    public ResponseEntity<User> selectOne(@PathVariable int id){
        User user=service.selectByPrimaryKey(id);
        return new ResponseEntity<User>(user,HttpStatus.OK);
    }

    @RequestMapping(value = "/user/",method = RequestMethod.POST)
    public ResponseEntity<Void> insertUser(@RequestBody User user, UriComponentsBuilder ucBuilder){
        service.insert(user);
        HttpHeaders headers=new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
        headers.setPragma("wangjunhui");
        headers.setOrigin("lilili");
        return new ResponseEntity<Void>(headers,HttpStatus.CREATED);
    }

//    @RequestMapping("user")
//    public String getall(ModelMap map,HttpServletRequest request){
//        List<User> users=service.selectAll();
//        System.out.println(users);
//        map.addAttribute("articles",users);
//        return "user";
//    }
    @RequestMapping(value = "/user/{id}",method = RequestMethod.DELETE)
    public ResponseEntity<User> deleteone(@PathVariable int id){
        service.deleteByPrimaryKey(id);
        return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.PUT)
    public ResponseEntity<User> update(@PathVariable int id , @RequestBody User user) {
        User user1=service.selectByPrimaryKey(id);
        user1.setUsername(user.getUsername());
        user1.setMobile(user.getMobile());
        service.updateByPrimaryKey(user1);
        return new ResponseEntity<User>(user1,HttpStatus.OK);
    }
}
