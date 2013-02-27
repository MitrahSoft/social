/*

This file is part of MitrahSoft social plugin for ContentBox
MitrahSoft social is licensed under the Apache License, Version 2.0

Copyright (C) 2012 2013 MitrahSoft http://www.MitrahSoft.com


Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

		Document:	ModuleConfig.cfc
		Author:		cfmitrah | http://www.MitrahSoft.com
		notes:
*/

component hint="My Module Configuration"{
			
	// Module Properties
	this.title 				= "social";
	this.author 			= "MirahSoft";
	this.webURL 			= "http://www.mitrahsoft.com";
	this.description 		= "Social module for contentbox";
	this.version			= "1.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Module Entry Point
	this.entryPoint			= "social";

	function configure(){

		settings = {
			iconsize = "32",
			aboutme = "", 
			addthis = "", 
			amazon = "", 
			aol = "", 
			app_store_2 = "", 
			app_store = "", 
			apple = "", 
			bebo = "", 
			bing = "", 
			blip = "", 
			blogger = "", 
			coroflot = "", 
			daytum = "", 
			delicious = "", 
			design_bump = "", 
			digg = "", 
			dopplr = "", 
			dribbble = "", 
			drupal = "", 
			ebay = "", 
			ember = "", 
			etsy = "", 
			facebook = "", 
			feedburner = "", 
			flickr = "", 
			foodspotting = "", 
			forrst = "", 
			foursquare = "", 
			friendfeed = "", 
			friendster = "", 
			gdgt = "", 
			github = "", 
			google_buzz = "", 
			google_plus = "", 
			google_talk = "", 
			google = "", 
			gowalla_2 = "", 
			gowalla = "", 
			grooveshark = "", 
			heart = "", 
			hyves = "", 
			icondock = "", 
			icq = "", 
			identi = "", 
			imessage = "", 
			instagram = "", 
			itune = "", 
			lastfm = "", 
			linkedin = "", 
			meetup = "", 
			metacafe = "", 
			microsoft = "", 
			mister_wong = "", 
			mixx = "", 
			mobileme = "", 
			msn = "", 
			myspace = "", 
			netvibes = "", 
			newsvine = "", 
			paypal = "", 
			photobucket = "", 
			picasa = "", 
			pinterest = "", 
			podcast = "", 
			posterous = "", 
			qik = "", 
			quora = "", 
			reddit = "", 
			retweet = "", 
			scribd = "", 
			sharethis = "", 
			skype = "", 
			slashdot = "", 
			slideshare = "", 
			smugmug = "", 
			social_behence = "", 
			social_designfloat = "", 
			social_email = "", 
			social_rss = "", 
			social_sharethis = "", 
			soundcloud = "", 
			spotify = "", 
			squidoo = "", 
			stackoverflow = "", 
			star = "", 
			stumbleupon = "", 
			technorati = "", 
			tumblr = "", 
			twitter_2 = "", 
			twitter = "", 
			viddler = "", 
			vimeo = "", 
			virb = "", 
			w3 = "", 
			wikepedia = "", 
			wordpress_2 = "", 
			wordpress = "", 
			xing = "", 
			yahoo_buzz = "", 
			yahoo = "", 
			yelp = "", 
			youtube = ""


			};
		settings["500px"]  = "";
		
		routes = [
			{pattern="/", handler="home",action="index"},
			{pattern="/:handler/:action?"}
		];


	}

	
	

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
		// Let's add ourselves to the main menu in the Modules section
		var menuService = controller.getWireBox().getInstance("AdminMenuService@cb");
		// Add Menu Contribution
		menuService.addSubMenu(topMenu=menuService.MODULES,name="Social",label="Social",href="#menuService.buildModuleLink('social','home')#");
		
		// Override settings?
		var settingService = controller.getWireBox().getInstance("SettingService@cb");
		var args = {name="cbSocial"};
		var setting = settingService.findWhere(criteria=args);
		if( !isNull(setting) ){
			// override settings from contentbox custom setting
			controller.getSetting("modules").social.settings = deserializeJSON( setting.getvalue() );
		}
	}

	/**
	* Fired when the module is activated
	*/
	function onActivate(){
		var settingService = controller.getWireBox().getInstance("SettingService@cb");
		// store default settings
		var findArgs = {name="cbSocial"};
		var setting = settingService.findWhere(criteria=findArgs);
		if( isNull(setting) ){
			var args = {name="cbSocial", value=serializeJSON( settings )};
			var socialSettings = settingService.new(properties=args);
			settingService.save( socialSettings );
		}

	}


	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){
		// Let's remove ourselves to the main menu in the Modules section
		var menuService = controller.getWireBox().getInstance("AdminMenuService@cb");
		// Remove Menu Contribution
		menuService.removeSubMenu(topMenu=menuService.MODULES,name="Social");
	}

	/**
	* Fired when the module is deactivated by ContentBox Only
	*/
	function onDeactivate(){
		var settingService = controller.getWireBox().getInstance("SettingService@cb");
		var args = {name="cbSocial"};
		var setting = settingService.findWhere(criteria=args);
		if( !isNull(setting) ){
			settingService.delete( setting );
		}
	}
	

}