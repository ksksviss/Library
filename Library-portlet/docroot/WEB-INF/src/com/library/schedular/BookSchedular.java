package com.library.schedular;

import com.liferay.portal.kernel.messaging.Message;
import com.liferay.portal.kernel.messaging.MessageListener;
import com.liferay.portal.kernel.messaging.MessageListenerException;

public class BookSchedular implements MessageListener {

	@Override
	public void receive(Message arg0) throws MessageListenerException {
System.out.println("schedular running");
	}

}
