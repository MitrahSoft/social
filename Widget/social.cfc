/**
* A widget that renders social icons in the <a href="https://github.com/cfmitrah/">social Module</a> 
*/
component extends="contentbox.model.ui.BaseWidget"{
	
	function init(controller){
		// super init
		super.init(controller);
		
		// Widget Properties
		setPluginName("Social");
		setPluginVersion("1.0");
		setPluginDescription("A widget that renders social icons");
		setPluginAuthor("MirahSoft");
		setPluginAuthorURL("http://www.MirahSoft.com");
		//setForgeBoxSlug("");
		
		return this;
	}
	
	/**
	* Render the widget out
	*/
	any function renderIt(){
		var content = runEvent(event='social:home.render');
		if( !isNull(content) ){
			return content;
		}
		return 'Problem in rendering';
	}
	
}
