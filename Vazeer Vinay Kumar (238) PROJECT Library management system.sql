create database lbs;
use lbs;
create table publisher(publishername varchar(100) primary key ,
publisheraddress text , phoneNo text);

create table books(book_id int primary key auto_increment,
book_title text , bookpublishername varchar(100),
FOREIGN KEY (bookpublishername) REFERENCES publisher(publishername));

create table library_branch(branch_id int primary key auto_increment,
branchname varchar(100), branchaddress varchar(200));

create table customer(cardNo int primary key auto_increment,
Name varchar(100), Address varchar(200), Phone varchar(50));

create table loan(loan_id int primary key auto_increment,
book_id INT, branch_id INT, cardNo INT,
dateout text , datedue text,
foreign key (book_id) references books(book_id),
foreign key (branch_id) references library_branch(branch_id),
foreign key (cardNo) references customer(cardNo));

create table book_copies(copies_id int primary key auto_increment,
book_id int , branch_id int , no_of_copies int,
foreign key (book_id) references books(book_id));

create table tbl_book_authors(AuthorID int primary key auto_increment,
BookID int , AuthorName varchar(50),
foreign key (BooKID) references books(book_id));

INSERT INTO publisher
		(PublisherName, PublisherAddress, Phoneno)
		VALUES
		('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745');
        
INSERT INTO books
		(book_Title, bookpublisherName)
		VALUES 
		('The Name of the Wind', 'DAW Books'),
		('It', 'Viking'),
		('The Green Mile', 'Signet Books'),
		('Dune', 'Chilton Books'),
		('The Hobbit', 'George Allen & Unwin'),
		('Eragon', 'Alfred A. Knopf'),
		('A Wise Mans Fear', 'DAW Books'),
		('Harry Potter and the Philosophers Stone', 'Bloomsbury'),
		('Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
		('The Giving Tree', 'Harper and Row'),
		('The Hitchhikers Guide to the Galaxy', 'Pan Books'),
		('Brave New World', 'Chalto & Windus'),
		('The Princess Bride', 'Harcourt Brace Jovanovich'),
		('Fight Club', 'W.W. Norton'),
		('Holes', 'Scholastic'),
		('Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
		('Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
		('The Fellowship of the Ring', 'George Allen & Unwin'),
		('A Game of Thrones', 'Bantam'),
		('The Lost Tribe', 'Picador USA');


	INSERT INTO library_branch
		(BranchName, BranchAddress)
		VALUES
		('Sharpstown','32 Corner Road, New York, NY 10012'),
		('Central','491 3rd Street, New York, NY 10014'),
		('Saline','40 State Street, Saline, MI 48176'),
		('Ann Arbor','101 South University, Ann Arbor, MI 48104');
        
INSERT INTO customer
		(name, address, phone)
		VALUES
		('Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		('Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		('Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		('Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		('Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		('Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		('Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		('Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');
        
INSERT INTO loan
		(book_id, branch_id, cardno, dateout, datedue)
		VALUES
		('1','1','1','1/1/18','2/2/18'),
		('2','1','1','1/1/18','2/2/18'),
		('3','1','1','1/1/18','2/2/18'),
		('4','1','1','1/1/18','2/2/18'),
		('5','1','2','1/3/18','2/3/18'),
		('6','1','2','1/3/18','2/3/18'),
		('7','1','2','1/3/18','2/3/18'),
		('8','1','2','1/3/18','2/3/18'),
		('9','1','2','1/3/18','2/3/18'),
		('11','1','2','1/3/18','2/3/18'),
		('12','2','5','12/12/17','1/12/18'),
		('10','2','5','12/12/17','1/12/17'),
		('20','2','5','2/3/18','3/3/18'),
		('18','2','5','1/5/18','2/5/18'),
		('19','2','5','1/5/18','2/5/18'),
		('19','2','1','1/3/18','2/3/18'),
		('11','2','6','1/7/18','2/7/18'),
		('1','2','6','1/7/18','2/7/18'),
		('2','2','1','1/7/18','2/7/18'),
		('3','2','1','1/7/18','2/7/18'),
		('5','2','5','12/12/17','1/12/18'),
		('4','3','3','1/9/18','2/9/18'),
		('7','3','2','1/3/18','2/3/18'),
		('17','3','2','1/3/18','2/3/18'),
		('16','3','4','1/3/18','2/3/18'),
		('15','3','4','1/3/18','2/3/18'),
		('15','3','7','1/3/18','2/3/18'),
		('14','3','4','1/3/18','2/3/18'),
		('13','3','7','1/3/18','2/3/18'),
		('13','3','2','1/3/18','2/3/18'),
		('19','3','2','12/12/17','1/12/18'),
		('20','4','3','1/3/18','2/3/18'),
		('1','4','2','1/12/18','2/12/18'),
		('3','4','7','1/3/18','2/3/18'),
		('18','4','7','1/3/18','2/3/18'),
		('12','4','2','1/4/18','2/4/18'),
		('11','4','3','1/15/18','2/15/18'),
		('9','4','3','1/15/18','2/15/18'),
		('7','4','7','1/1/18','2/2/18'),
		('4','4','3','1/1/18','2/2/18'),
		('1','4','3','2/2/17','3/2/18'),
		('20','4','3','1/3/18','2/3/18'),
		('1','4','2','1/12/18','2/12/18'),
		('3','4','7','1/13/18','2/13/18'),
		('18','4', '7','1/13/18','2/13/18'),
		('12','4','2','1/14/18','2/14/18'),
		('11','4','3','1/15/18','2/15/18'),
		('9','4','3','1/15/18','2/15/18'),
		('7','4','7','1/19/18','2/19/18'),
		('4','4','3','1/19/18','2/19/18'),
		('1','4','3','1/22/18','2/22/18');
        
        
INSERT INTO book_copies
		(book_id,Branch_ID, no_of_copies)
		VALUES
		('1','1','5'),
		('2','1','5'),
		('3','1','5'),
		('4','1','5'),
		('5','1','5'),
		('6','1','5'),
		('7','1','5'),
		('8','1','5'),
		('9','1','5'),
		('10','1','5'),
		('11','1','5'),
		('12','1','5'),
		('13','1','5'),
		('14','1','5'),
		('15','1','5'),
		('16','1','5'),
		('17','1','5'),
		('18','1','5'),
		('19','1','5'),
		('20','1','5'),
		('1','2','5'),
		('2','2','5'),
		('3','2','5'),
		('4','2','5'),
		('5','2','5'),
		('6','2','5'),
		('7','2','5'),
		('8','2','5'),
		('9','2','5'),
		('10','2','5'),
		('11','2','5'),
		('12','2','5'),
		('13','2','5'),
		('14','2','5'),
		('15','2','5'),
		('16','2','5'),
		('17','2','5'),
		('18','2','5'),
		('19','2','5'),
		('20','2','5'),
		('1','3','5'),
		('2','3','5'),
		('3','3','5'),
		('4','3','5'),
		('5','3','5'),
		('6','3','5'),
		('7','3','5'),
		('8','3','5'),
		('9','3','5'),
		('10','3','5'),
		('11','3','5'),
		('12','3','5'),
		('13','3','5'),
		('14','3','5'),
		('15','3','5'),
		('16','3','5'),
		('17','3','5'),
		('18','3','5'),
		('19','3','5'),
		('20','3','5'),
		('1','4','5'),
		('2','4','5'),
		('3','4','5'),
		('4','4','5'),
		('5','4','5'),
		('6','4','5'),
		('7','4','5'),
		('8','4','5'),
		('9','4','5'),
		('10','4','5'),
		('11','4','5'),
		('12','4','5'),
		('13','4','5'),
		('14','4','5'),
		('15','4','5'),
		('16','4','5'),
		('17','4','5'),
		('18','4','5'),
		('19','4','5'),
		('20','4','5');
	
	INSERT INTO tbl_book_authors
		(BookID,AuthorName)
		VALUES
		('1','Patrick Rothfuss'),
		('2','Stephen King'),
		('3','Stephen King'),
		('4','Frank Herbert'),
		('5','J.R.R. Tolkien'),
		('6','Christopher Paolini'),
		('6','Patrick Rothfuss'),
		('8','J.K. Rowling'),
		('9','Haruki Murakami'),
		('10','Shel Silverstein'),
		('11','Douglas Adams'),
		('12','Aldous Huxley'),
		('13','William Goldman'),
		('14','Chuck Palahniuk'),
		('15','Louis Sachar'),
		('16','J.K. Rowling'),
		('17','J.K. Rowling'),
		('18','J.R.R. Tolkien'),
		('19','George R.R. Martin'),
		('20','Mark Lee');
        
select * from book_copies;
select * from books;
select * from customer;
select * from library_branch;
select * from loan;
select * from publisher;
select * from tbl_book_authors;

#1.	How many copies of the book titled "The Lost Tribe" 
-- are owned by the library branch whose name is "Sharpstown"?
-- book copies-->books-->librarybranch
SELECT COUNT(*) AS num_copies
FROM book_copies bc
inner join books b ON bc.book_id = b.book_id
inner join library_branch lb ON bc.branch_id = lb.branch_id
WHERE b.book_title = 'The Lost Tribe' AND lb.branchname = 'Sharpstown';

#2.How many copies of the book titled "The Lost Tribe" are owned by each library branch? 
-- book copies-->books-->library branch
SELECT branchname AS "Library Branch", SUM(book_copies.no_of_copies) AS "Number of Copies"
FROM library_branch
LEFT JOIN book_copies ON library_branch.branch_id = book_copies.branch_id
LEFT JOIN books ON book_copies.book_id = books.book_id
WHERE books.book_title = 'The Lost Tribe'
GROUP BY library_branch.branchname;

#3.Retrieve the names of all borrowers who do not have any books checked out?
-- customer--> loan
SELECT * from customer
WHERE cardNo NOT IN (
    SELECT cardNo FROM loan);
    
#4.Retrieve the names of all borrowers who have checked out  'The Name of the Wind'?
-- customer--> loan--> books
SELECT Name FROM customer
inner join loan ON customer.cardNo = loan.cardNo
inner join books ON loan.book_id = books.book_id
WHERE books.book_title = 'The Name of the Wind';

#5.For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, 
#  retrieve the book title, the borrower's name, and the borrower's address.
-- loan-->library branch --> books-->customer

#6.For each library branch, retrieve the branch name and the total number of books loaned out from that branch?
-- library branch-->loan
SELECT branchname AS "Branch Name", COUNT(loan_id) AS "Total Books Loaned"
FROM library_branch
LEFT JOIN loan ON library_branch.branch_id = loan.branch_id
GROUP BY library_branch.branchname;

#7.Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out?
-- customer -->loan
SELECT Name , Address , COUNT(loan_id) AS "Number of Books Checked Out"
FROM customer
JOIN loan ON customer.cardNo = loan.cardNo
GROUP BY Name, Address
HAVING COUNT(loan.loan_id) > 5;

#8.For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch 
#  whose name is "Central"?
-- tbl_book_authors-->books-->book_copies-->library_brannch
SELECT books.book_title AS "Title",
book_copies.no_of_copies AS "Number of Copies at Central"
FROM books
JOIN tbl_book_authors ON books.book_id = tbl_book_authors.BookID
JOIN book_copies ON books.book_id = book_copies.book_id
JOIN library_branch ON book_copies.branch_id = library_branch.branch_id
WHERE tbl_book_authors.AuthorName = 'Stephen King' AND library_branch.branchname = 'Central';

#9.How many copies of the book titled "The Habit" are owned by every branch?
-- book_copies-->books-->library_branch
SELECT branchname AS "Branch Name", SUM(no_of_copies) AS "Total Copies"
FROM library_branch
JOIN book_copies ON library_branch.branch_id = book_copies.branch_id
JOIN books ON book_copies.book_id = books.book_id
WHERE books.book_title = 'The Habit'
GROUP BY library_branch.branchname;

#10.Find number of books loaned by customer “Joe Smith”?
-- customer-->loan
SELECT Name AS "Customer Name", COUNT(loan_id) AS "Number of Books Loaned"
FROM customer
JOIN loan ON customer.cardNo = loan.cardNo
WHERE customer.Name = 'Joe Smith';














 