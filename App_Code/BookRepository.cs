using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// Eskender Memetov 300805013
/// <summary>
/// Summary description for BookRepository
/// </summary>
public class BookRepository
{
    List<Book> booksList;
    public BookRepository()
    {
        booksList = new List<Book>();
    }

    public  List<Book> GetAllBooks()
    {
        return booksList;
    }
    public void Add(Book aBook)
    {
        booksList.Add(aBook);
    }
}
// Eskender Memetov 300805013