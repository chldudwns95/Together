package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Take;

public interface TakeService {

	List<Take> list();

	void add(Take item);

	Take item(int serviceId);

	void update(Take item);

	void delete(int serviceId);

}
