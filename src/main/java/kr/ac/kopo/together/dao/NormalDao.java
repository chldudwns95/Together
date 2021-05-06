package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Normal;

public interface NormalDao {

	List<Normal> list();

	void add(Normal item);

	Normal item(int boardId);

	void update(Normal item);

	void delete(int boardId);

}
