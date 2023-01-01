package samp12;

public class BookServiceImpl { // implements BookService {
	private BookDao bd = new BookDaoImpl();	
	public void setBd(BookDao bd) {
		this.bd = bd;
	}

	public Book getBook() {
		return bd.getBook("죄와 벌");
	}
}