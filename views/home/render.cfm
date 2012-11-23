<cfoutput>
<link href="#event.getModuleRoot('social')#/includes/css/social.css" rel="stylesheet" type="text/css" />

<cfset iconsize = prc.settings["iconsize"]>
<cfset settingsStruct = duplicate(prc.settings)>
<cfset temp = structDelete(settingsStruct,"iconsize")>

<div id="social_container">	
	<cfloop collection="#settingsStruct#" item="key">
		<cfif settingsStruct[key] neq "">
			<a href="#settingsStruct[key]#" title="#lcase(key)#"><img class="social#iconsize# social#iconsize#-#lcase(key)#" src="#event.getModuleRoot('social')#/includes/images/blank.gif"></a>
		</cfif>
	</cfloop>
</div>
</cfoutput>