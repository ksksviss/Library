<%@page import="com.library.model.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.library.service.BookLocalServiceUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Book> bookList = BookLocalServiceUtil.getBooks(0,BookLocalServiceUtil.getBooksCount());
%>
<table>
<tr>
<th>
Book Name 
</th>
<th>
Author
</th>
</tr>
<%
for(Book book : bookList){
	%>
	<tr>
	<td>
	<%=book.getBookName() %>
	</td>
	<td>
	<%=book.getAuthor() %>
	</td>
	</tr>
	
	<%
}
%>
</table>
</body>
</html>
