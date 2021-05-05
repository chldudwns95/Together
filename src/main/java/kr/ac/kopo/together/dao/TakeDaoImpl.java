package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Take;

@Repository
public class TakeDaoImpl implements TakeDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Take> list() {
		return sql.selectList("take.list");
	}

	@Override
	public void add(Take item) {
		sql.insert("take.add", item);
	}

	@Override
	public Take item(int serviceId) {
		return sql.selectOne("take.item", serviceId);
	}

	@Override
	public void update(Take item) {
		sql.update("take.update", item);
	}

	@Override
	public void delete(int serviceId) {
		sql.delete("take.delete", serviceId);
	}

}
