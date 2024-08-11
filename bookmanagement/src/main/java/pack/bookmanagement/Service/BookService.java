package pack.bookmanagement.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import pack.bookmanagement.Model.Book;
import pack.bookmanagement.Repository.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepository;
	
	public List< Book> getbooks(){
		return (List<Book>) bookRepository.findAll();
	}
	
	// delete book by id
	
	public void deleteBook(int id) {
		bookRepository.deleteById(id);
		System.out.println("deleted");
	}
	
	// save book
	
		public void saveBook(Book book) {
			bookRepository.save(book);
			System.out.println("saved book");
		}
		
	// edit book
		
		public Book editBookbyid(int id) {
			
			System.out.println("edited book");
			return bookRepository.findById(id).get();
		}
	
}
