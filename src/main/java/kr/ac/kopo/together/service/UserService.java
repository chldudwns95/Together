package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.User;

public interface UserService {

	List<User> list();

	void add(User item);

	boolean checkID(String id);

	boolean checkNick(String id);

	boolean login(User item);


}
