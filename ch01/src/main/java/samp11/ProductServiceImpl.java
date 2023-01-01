package samp11;

public class ProductServiceImpl implements ProductService {
	private ProductDao pd;
//	설정파일에서 ProductDao객체를 생성해서 매개변수로 넣어준다(주입)
	public void setPd(ProductDao pd) {
		this.pd = pd;
	}

	public Product getProduct() {
		return pd.getProduct("라면");
	}
}