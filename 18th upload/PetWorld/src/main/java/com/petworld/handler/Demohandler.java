package com.petworld.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.petworld.bean.BeanModule;
import com.petworld.services.BeanModuleService;

@Component
public class Demohandler {
	@Autowired
	BeanModuleService beanModuleService;

	public BeanModule initFlow() {
		return new BeanModule();
	}

	public String validateDetails(BeanModule beanModule, MessageContext messageContext) {
		String status = "success";
		if (beanModule.getName().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("name").defaultText("name cannot be Empty").build());
			status = "failure";
		}
		if (beanModule.getEmailid().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("emailid").defaultText("Emailid cannot be Empty").build());
			status = "failure";
		}
		if (beanModule.getPassword().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("password cannot be Empty").build());
			status = "failure";
		}
		if (beanModule.getAddress().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if (beanModule.getContact().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("mobile").defaultText("mobile cannot be Empty").build());
			status = "failure";
		}
		List<BeanModule> usrLt = beanModuleService.getList();
		for (BeanModule usr : usrLt) {
			if (beanModule.getName().equals(usr.getName())) {
				messageContext.addMessage(
						new MessageBuilder().error().source("name").defaultText("UserName already exists..").build());
				status = "failure";
			}
		}
		/*
		 * if(userBean.getAddress().isEmpty()){ messageContext.addMessage(new
		 * MessageBuilder().error().source( "address").defaultText(
		 * "address cannot be Empty").build()); status = "failure"; }
		 */
		if (status.equals("success")) {
			beanModuleService.insertRow(beanModule);
		}
		return status;
	}
}