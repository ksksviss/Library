package com.library.portlet;

import java.io.IOException;
import java.util.Date;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.library.model.Book;
import com.library.model.impl.BookImpl;
import com.library.service.BookLocalServiceUtil;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.model.User;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class LibrayPortlet
 */
public class LibrayPortlet extends MVCPortlet {
public void addBook (ActionRequest actionRequest,
		ActionResponse actionResponse) throws IOException, PortletException, SystemException {
	String bookName = ParamUtil.getString(actionRequest, "bookName");
	String author = ParamUtil.getString(actionRequest, "author");
	System.out.println("bookName " +bookName);
	System.out.println("author " +author);
	Book book = new BookImpl();	
	book.setBookName(bookName);
	book.setAuthor(author);
	book.setCreateDate(new Date());
	book.setModifiedDate(new Date());
	ThemeDisplay themeDisplay = (ThemeDisplay)actionRequest.getAttribute(
			WebKeys.THEME_DISPLAY);
	User user = themeDisplay.getUser();
	book.setUserId(user.getUserId());
	book.setUserName(author);
	BookLocalServiceUtil.addBook(book);
	

}

}

