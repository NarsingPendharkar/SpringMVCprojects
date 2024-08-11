package pack.bookmanagement.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Book")
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String bookname;
	private String auther;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public Book(int id, String bookname, String auther) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.auther = auther;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return String.format("Book [id=%s, bookname=%s, auther=%s]", id, bookname, auther);
	}
	
	
	
	

}
