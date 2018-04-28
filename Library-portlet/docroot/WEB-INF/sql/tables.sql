create table LMS_Book (
	bookId LONG not null primary key,
	bookName VARCHAR(75) null,
	author VARCHAR(75) null,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null
);