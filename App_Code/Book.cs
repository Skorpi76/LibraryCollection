using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// Eskender Memetov 300805013
/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    public string BookName { set; get; }
    public string AuthorName { set; get; }
    public string ISBN { set; get; }
    public string Genre { set; get; }
    public int NumberOfPages { set; get; }
    public bool LandedToFriend { set; get; }
    public string FriendsName { set; get; }
    public string Comments { set; get; }

    public Book(string bookName, string authorName, int numberOfPages, string genre)
    {
        BookName = bookName;
        AuthorName = authorName;
        NumberOfPages = numberOfPages;
        Genre = genre;
    }
    public Book(string bookName, string authorName, int numberOfPages, string genre, bool landedToFriend, string friendName)
    {
        BookName = bookName;
        AuthorName = authorName;
        NumberOfPages = numberOfPages;
        Genre = genre;
        LandedToFriend = landedToFriend;
        FriendsName = friendName;
    }
    // Eskender Memetov 300805013
    public Book(string bookName, string authorName, string isbn, string genre, int numberOfPages, bool landedToFriend, string friendsName, string comment)
    {
        BookName = bookName;
        AuthorName = authorName;
        ISBN = isbn;
        Genre = genre;
        NumberOfPages = numberOfPages;
        LandedToFriend = landedToFriend;
        FriendsName = friendsName;
        Comments = comment;
    }

}
// Eskender Memetov 300805013