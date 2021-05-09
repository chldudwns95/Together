package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<User> list() {
		return sql.selectList("user.list");
	}

	@Override
	public void add(User item) {
		sql.insert("user.add", item);

	}

	@Override
	public int checkID(String id) {
		return sql.selectOne("user.checkid", id);
	}

	@Override
	public int checkNick(String id) {
		return sql.selectOne("user.checknick", id);
	}

	@Override
	public User login(User item) {
		return sql.selectOne("user.login", item);
	}

}
