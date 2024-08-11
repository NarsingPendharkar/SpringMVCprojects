package pack.bookmanagement.Controller;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pack.bookmanagement.Model.Book;
import pack.bookmanagement.Service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	
	
	

	// home page
	@GetMapping("/")
	public String listBooks(Model model) {
		List<Book> listbooks = bookService.getbooks();
		String name = "narsing";
		model.addAttribute("listbooks", listbooks);
		return "list-books";
	}
	
	// call new book form to save new book
	
	@GetMapping("/newbook")
	public String homePage(Model model) {
		return "addbook";
	}
	
	
	//delete book by given id
	@RequestMapping("/delete")
	public String DeleteBook(@RequestParam("id") int id) {
		bookService.deleteBook(id);
		return "redirect:/";
	}
	
	//save new book
	
	@PostMapping("/save")
	public String newBook(@ModelAttribute Book book, BindingResult result) {
		bookService.saveBook(book);
		return "redirect:/";
	}
	
	// edit book and save it back
	@GetMapping("/edit")
	public String editBook(@RequestParam("id") int id, Model model) throws NoSuchElementException {
		Book book=bookService.editBookbyid(id);
		model.addAttribute("book",book);
		return "edit-book";
	}
	
	
	
	

}
