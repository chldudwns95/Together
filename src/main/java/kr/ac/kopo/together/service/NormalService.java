package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Normal;

public interface NormalService {

	List<Normal> list();

	void add(Normal item);

	Normal item(int boardId);

	void update(Normal item);

	void delete(int boardId);

}
