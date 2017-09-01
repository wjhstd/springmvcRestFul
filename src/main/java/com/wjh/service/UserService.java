package com.wjh.service;

import com.wjh.bean.User;
import com.wjh.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService {
    @Autowired
    private UserMapper mapper;
    public int deleteByPrimaryKey(Integer id){
        mapper.deleteByPrimaryKey(id);
        return 0;
    }

    public int insert(User record){
        mapper.insert(record);
        return 0;
    }

    public int insertSelective(User record){

        return 0;
    }

    public User selectByPrimaryKey(Integer id){

        return mapper.selectByPrimaryKey(id);
    }


    public int updateByPrimaryKeySelective(User record){
        return 0;
    }

    public int updateByPrimaryKey(User record){
        mapper.updateByPrimaryKey(record);
        return 0;
    }

   public List<User> selectAll(){
        List<User> users=mapper.selectAll();
        return users;
    }
}
