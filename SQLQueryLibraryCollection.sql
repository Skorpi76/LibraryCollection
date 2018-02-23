use [LibraryCollectionDB]
go
/*CREATE TABLE Genre  
   (GenreID int PRIMARY KEY NOT NULL,  
    GenreName varchar(25) NOT NULL)  
GO  
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (1, 'Science fiction')  
go
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (2, 'Satire')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (3, 'Drama')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (4, 'Action and Adventure')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (5, 'Romance')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (6, 'Horror')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (7, 'Health') 
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (8, 'Guide')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (9, 'Fantasy')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (10, 'Science')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (11, 'Comics')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (12, 'Religion')  
GO
INSERT DBO.Genre(GenreID, GenreName)  
    VALUES (13, 'Children') 
GO  


CREATE TABLE BOOKS 
 (BOOKID INT PRIMARY KEY IDENTITY(1,1) NOT NULL ,
  BOOKTITLE VARCHAR(50) NOT NULL,
  BOOKAUTOR VARCHAR(40) NOT NULL,
  ISBN VARCHAR(50), 
  GENREID INT, 
  NUMBEROFPAGES INT NOT NULL, 
  LANDEDTOFRIEND INT CHECK (LANDEDTOFRIEND = 1 OR LANDEDTOFRIEND = 0),
  FRIENDSNAME VARCHAR(50), 
  COMMENTS TEXT,  
  CONSTRAINT FK_GENRE FOREIGN KEY (GENREID)
  REFERENCES DBO.Genre(GENREID)
  )
  
GO 
  INSERT DBO.BOOKS(BOOKTITLE, BOOKAUTOR, ISBN, GENREID, NUMBEROFPAGES, LANDEDTOFRIEND, COMMENTS)  
    VALUES ('Fahrenheit 451', 'Ray Bradbury', '978-1451673319', 1, 256, 0, 'Guy Montag is a fireman. In his world, where television rules and literature is on the brink of extinction, firemen start fires rather than put them out. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden.
Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But then he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television.
When Mildred attempts suicide and Clarisse suddenly disappears, Montag begins to question everything he has ever known. He starts hiding books in his home, and when his pilfering is discovered, the fireman has to run for his life.' ) 
GO  
INSERT DBO.BOOKS(BOOKTITLE, BOOKAUTOR, ISBN, GENREID, NUMBEROFPAGES, LANDEDTOFRIEND, COMMENTS)  
    VALUES ('The Lord of the Rings', 'J. R. R. Tolkien', '978-0261102385', 9, 1664 , 0, 'Continuing the story of The Hobbit, this three-volume boxed set of Tolkien''s epic masterpiece, The Lord of the Rings, features striking black covers based on Tolkien''s own design, the definitive text, and three maps including a detailed map of Middle-earth. Sauron, the Dark Lord, has gathered to him all the Rings of Power - the means by which he intends to rule Middle-earth. All he lacks in his plans for dominion is the One Ring - the ring that rules them all - which has fallen into the hands of the hobbit, Bilbo Baggins. In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose. Since it was first published in 1954, "The Lord of the Rings" has been a book people have treasured. Steeped in unrivalled magic and otherworldliness, its sweeping fantasy has touched the hearts of young and old alike.')
SELECT * FROM BOOKS; 
INSERT DBO.BOOKS(BOOKTITLE, BOOKAUTOR, ISBN, GENREID, NUMBEROFPAGES, LANDEDTOFRIEND, COMMENTS)  
    VALUES ('The Martian', 'Andy Weir', '1523644435', 1, 385, 0, 'Six days ago, astronaut Mark Watney became one of the first people to walk on Mars. 

Now, he''s sure he''ll be the first person to die there.

After a dust storm nearly kills him and forces his crew to evacuate while thinking him dead, Mark finds himself stranded and completely alone with no way to even signal Earth that he’s alive—and even if he could get word out, his supplies would be gone long before a rescue could arrive. 

Chances are, though, he won''t have time to starve to death. The damaged machinery, unforgiving environment, or plain-old "human error" are much more likely to kill him first. 

But Mark isn''t ready to give up yet. Drawing on his ingenuity, his engineering skills—and a relentless, dogged refusal to quit—he steadfastly confronts one seemingly insurmountable obstacle after the next. Will his resourcefulness be enough to overcome the impossible odds against him?' ) 

  INSERT DBO.BOOKS(BOOKTITLE, BOOKAUTOR, ISBN, GENREID, NUMBEROFPAGES, LANDEDTOFRIEND, FRIENDSNAME, COMMENTS)  
    VALUES ('The Master and Margarita', 'Mikhail Bulgakov', '978-0679760801', 1, 384, 1, 'Bill Gates', 'The underground masterpiece of twentieth-century Russian fiction, Mikhail Bulgakov’s THE MASTER AND MARGARITA was written during Stalin’s regime and could not be published until many years after its author’s death. When the devil arrives in 1930s Moscow, consorting with a retinue of odd associates—including a talking black cat, an assassin, and a beautiful naked witch—his antics wreak havoc among the literary elite of the world capital of atheism. Meanwhile, the Master, author of an unpublished novel about Jesus and Pontius Pilate, languishes in despair in a pyschiatric hospital, while his devoted lover, Margarita, decides to sell her soul to save him. As Bulgakov’s dazzlingly exuberant narrative weaves back and forth between Moscow and ancient Jerusalem, studded with scenes ranging from a giddy Satanic ball to the murder of Judas in Gethsemane, Margarita’s enduring love for the Master joins the strands of plot across space and time.' ) 
	
	CREATE TABLE FEEDBACK 
 (COMMENTID INT,
  NAME VARCHAR(50) NOT NULL,
  EMAIL VARCHAR(40) NOT NULL,
  COMMENT TEXT 
  )
	
  INSERT DBO.FEEDBACK(COMMENTID, NAME, EMAIL, COMMENT)  
    VALUES (1, 'BILL GATEST', 'GATES@BILL.COM', 'the best web page ever!');  
	  INSERT DBO.FEEDBACK(COMMENTID, NAME, EMAIL, COMMENT)  
    VALUES (2, 'Drake', 'drake@gmail.COM', 'Thanks, great app!');  
	
	*/