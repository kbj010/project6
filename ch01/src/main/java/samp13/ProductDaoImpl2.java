package samp13;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
// @붙어 있는 것이 annotaion
// @Component  // 객체(componet)로 만들어 줘라
@Repository("pd2")
public class ProductDaoImpl2 implements ProductDao {
	public Product getProduct(String name) {
		return new Product(name, 5000);
	}
}