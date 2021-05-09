package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.User;

public interface UserDao {

	List<User> list();

	void add(User item);

	int checkID(String id);

	int checkNick(String id);

	User login(User item);

}
