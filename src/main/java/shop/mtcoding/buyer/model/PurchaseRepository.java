package shop.mtcoding.buyer.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PurchaseRepository {
    public int insert(int userId, int ProductId);

    public List<Product> findAll();

    public User findById(int id);

    public int updateById(int id, int userId, int ProductId);

    public int deleteById(int id);
}
