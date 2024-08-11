package pack.bookmanagement.Repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import pack.bookmanagement.Model.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {

}
