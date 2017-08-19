package com.mkki.controller;

import com.mkki.controller.action.Action;
import com.mkki.controller.action.EmployeesDeleteAction;
import com.mkki.controller.action.EmployeesListAction;
import com.mkki.controller.action.EmployeesUpdateAction;
import com.mkki.controller.action.EmployeesUpdateFormAction;
import com.mkki.controller.action.EmployeesViewAction;
import com.mkki.controller.action.EmployeesWriteAction;
import com.mkki.controller.action.EmployeesWriteFormAction;

public class ActionFactory {
	private ActionFactory() {
		super();
	}
	private static ActionFactory instance = new ActionFactory();
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		if(command.equals("employee_list")) {
			action = new EmployeesListAction();
		} else if(command.equals("employee_write_form")) {
			action = new EmployeesWriteFormAction();
		} else if(command.equals("employee_write")) {
			action = new EmployeesWriteAction();
		} else if(command.equals("employee_view")) {
			action = new EmployeesViewAction();
		} else if(command.equals("employee_update")) {
			action = new EmployeesUpdateAction();
		} else if(command.equals("employee_update_form")) {
			action = new EmployeesUpdateFormAction();
		} else if(command.equals("employee_delete")) {
			action = new EmployeesDeleteAction();
		}
		return action;
	}
}
