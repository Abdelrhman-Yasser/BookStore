package gui_controller.account_window;

import java.io.FileNotFoundException;

import gui_controller.window_controller;
import javafx.scene.layout.Pane;

public class account_controller {
	
	/************************************************/
	/* ATTRIBUTES */
	/************************************************/
	private element_generator elements;
	private layout_generator layout;
	private action_listeners_generator action_listener;
	//private HotKeysInitializer hotKeys;
	
	
	/************************************************/
	/* CONSTRUCTOR */
	/************************************************/
	public
	account_controller(window_controller gui_controller)
	{
		elements=new element_generator();
		layout=new layout_generator(elements);
		action_listener=new action_listeners_generator(elements, layout, gui_controller);
		//hotKeys=new HotKeysInitializer(elements);
	}
	
	/************************************************/
	/* INTERFACE METHODS */
	/************************************************/
	public void
	initialize_window() throws FileNotFoundException
	{
		elements.generate_elements();
		layout.build_layout();
		action_listener.setup_actions();
		//hotKeys.initialize();
	}
	
	public Pane
	get_window()
	{
		return layout.get_layout();
	}
	
	
	
}
