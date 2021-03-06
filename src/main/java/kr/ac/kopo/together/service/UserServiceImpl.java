package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.UserDao;
import kr.ac.kopo.together.model.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao dao;
	
	@Override
	public List<User> list() {
		return dao.list();
	}

	@Override
	public void add(User item) {
		dao.add(item);

	}

	@Override
	public boolean checkID(String id) {
		if(dao.checkID(id) == 0)
			return true;
		
		return false;
	}

	@Override
	public boolean checkNick(String id) {
		if(dao.checkNick(id) == 0)
			return true;
		
		return false;
	}

}
