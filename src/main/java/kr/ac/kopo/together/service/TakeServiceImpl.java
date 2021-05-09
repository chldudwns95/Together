package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.TakeDao;
import kr.ac.kopo.together.model.Take;

@Service
public class TakeServiceImpl implements TakeService {

	@Autowired
	TakeDao dao;
	
	@Override
	public List<Take> list() {
		return dao.list();
	}

	@Override
	public void add(Take item) {
		dao.add(item);

	}

	@Override
	public Take item(int serviceId) {
		return dao.item(serviceId);
	}

	@Override
	public void update(Take item) {
		dao.update(item);

	}

	@Override
	public void delete(int serviceId) {
		dao.delete(serviceId);

	}

}
