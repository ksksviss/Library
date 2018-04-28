<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />
<portlet:actionURL name="addBook" var="addBookURL">
</portlet:actionURL>
<portlet:renderURL var="viewAllBooks"> 
<portlet:param name="mvcPath" value="/html/libray/bookDetails.jsp"/>
</portlet:renderURL>	
<h1>Library Portlet</h1>

<aui:form  name="addBook" id="addBook" action="<%=addBookURL.toString() %>" method="post" >
Book Name: <aui:input name="bookName" id="bookName" type="text" label=""></aui:input>
Author: <aui:input name="author" id="author" type="text" label=""></aui:input>
Student Name: <aui:input name="studentName" id="studentName" type="text" label="" ></aui:input>
Age: <aui:input name="age" id="age" type="text" label=""></aui:input>
Sex: <aui:input name="sex" id="sex" type="text" label=""></aui:input>
Phone No: <aui:input name="phoneNo" id="phoneNo" type="text" label=""></aui:input>
Address: <aui:input name="address" id="address" type="text" label=""></aui:input>
<input type="submit"></input> 
</aui:form>

<br/>
<a href="<%=viewAllBooks.toString()%>">View Books</a>
