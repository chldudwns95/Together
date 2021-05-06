package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Goods;

public interface GoodsDao {

	List<Goods> list();

	void add(Goods item);

	Goods item(int goodsId);

	void update(Goods item);

	void delete(int goodsId);

}
