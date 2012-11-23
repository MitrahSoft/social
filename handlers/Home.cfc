component{
	
	// DI
	property name="settingService" 	inject="settingService@cb";
	property name="cb" 				inject="cbHelper@cb";
	
	function index(event,rc,prc){
		prc.tabModules_Social = true;
		prc.settings = getModuleSettings("social").settings;
		event.setView("home/index");
	}
	
	function more(event,rc,prc){
		prc.tabModules_Social = true;
		prc.settings = getModuleSettings("social").settings;
		event.setView("home/more");
	}
	
	function saveSettings(event,rc,prc){
		// Get social settings
		prc.settings = getModuleSettings("social").settings;

		// iterate over settings
		for(var key in prc.settings){
			// save only sent in setting keys
			if( structKeyExists(rc, key) ){
				prc.settings[ key ] = rc[ key ];
			}
		}

		// Save settings
		var args = {name="cbSocial"};
		var setting = settingService.findWhere(criteria=args);
		setting.setValue( serializeJSON( prc.settings ) );
		settingService.save( setting );

		// Messagebox
		getPlugin("MessageBox").info("Settings Saved & Updated!");
		// Relocate via CB Helper
		cb.setNextModuleEvent("social","home.index");
	}
	
	function render(event,rc,prc){
		// Get social settings
		prc.settings = getModuleSettings("social").settings;
		return renderview(view="home/render",module="social");
	}

}