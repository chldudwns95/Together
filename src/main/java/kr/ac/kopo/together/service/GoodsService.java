package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Goods;

public interface GoodsService {

	List<Goods> list();

	void add(Goods item);

	Goods item(int goodsId);

	void update(Goods item);

	void delete(int goodsId);

}
