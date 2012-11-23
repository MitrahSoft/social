<cfoutput>
<cfinclude template="sideBar.cfm" >	
<!--============================Main Column============================-->
<div class="main_column">
	<div class="box">
		<!--- Body Header --->
		<div class="header">
			Social media settings 
		</div>
		<!--- Body --->
		<div class="body" id="mainBody">

			#getPlugin("MessageBox").renderit()#
			
			#html.startForm(action="cbadmin.module.social.home.saveSettings",name="settingsForm")#
			
				<div class="actionBar center">
					<br />#html.submitButton(value="Save Settings",class="buttonred",title="Save the social media settings")#
					#html.href(href ="cbadmin.module.social.home.more",text ="More social icons")#
				</div>
				
			<fieldset>
				
				<legend><img src="#prc.cbRoot#/includes/images/settings_black.png" alt="modifiers"/> <strong>Social media details</strong></legend>
				
				
				<div>
					<cfset options = [{disp:"16px",val:16}, {disp:"24px",val:24}, {disp:"32px",val:32}]><!--- --->
					#html.select(name="iconsize", label="Icon Size:", options=html.options(values="#options#",column="val" ,namecolumn="disp",selectedValue="#prc.settings.iconsize#"  ),  class="select small")#
				</div>	
				
				<div class="column3-left">
					#html.textField(name="aboutme", label="aboutme:", value="#prc.settings.aboutme#", class="textfield large")# 
					
					#html.textField(name="addthis", label="addthis:", value="#prc.settings.addthis#", class="textfield large")# 
						
					#html.textField(name="amazon", label="amazon:", value="#prc.settings.amazon#", class="textfield large")# 
					
					#html.textField(name="aol", label="aol:", value="#prc.settings.aol#", class="textfield large")# 
						
					#html.textField(name="app_store_2", label="app_store_2:", value="#prc.settings.app_store_2#", class="textfield large")# 
					
					#html.textField(name="app_store", label="app_store:", value="#prc.settings.app_store#", class="textfield large")# 
						
					#html.textField(name="apple", label="apple:", value="#prc.settings.apple#", class="textfield large")# 
					
					#html.textField(name="bing", label="bing:", value="#prc.settings.bing#", class="textfield large")# 
						
					#html.textField(name="blogger", label="blogger:", value="#prc.settings.blogger#", class="textfield large")# 
					
					#html.textField(name="delicious", label="delicious:", value="#prc.settings.delicious#", class="textfield large")# 
					
					#html.textField(name="digg", label="digg:", value="#prc.settings.digg#", class="textfield large")# 
					
					#html.textField(name="ebay", label="ebay:", value="#prc.settings.ebay#", class="textfield large")# 
					
					#html.textField(name="facebook", label="facebook:", value="#prc.settings.facebook#", class="textfield large")# 
					
					#html.textField(name="feedburner", label="feedburner:", value="#prc.settings.feedburner#", class="textfield large")# 
					
					#html.textField(name="flickr", label="flickr:", value="#prc.settings.flickr#", class="textfield large")# 
					
					#html.textField(name="foursquare", label="foursquare:", value="#prc.settings.foursquare#", class="textfield large")# 
					
					#html.textField(name="friendfeed", label="friendfeed:", value="#prc.settings.friendfeed#", class="textfield large")# 
					
					#html.textField(name="friendster", label="friendster:", value="#prc.settings.friendster#", class="textfield large")# 
					
					#html.textField(name="github", label="github:", value="#prc.settings.github#", class="textfield large")# 
					
					#html.textField(name="google_buzz", label="google_buzz:", value="#prc.settings.google_buzz#", class="textfield large")# 
					
					#html.textField(name="google_plus", label="google_plus:", value="#prc.settings.google_plus#", class="textfield large")# 
					
					#html.textField(name="google_talk", label="google_talk:", value="#prc.settings.google_talk#", class="textfield large")# 
					
					#html.textField(name="google", label="google:", value="#prc.settings.google#", class="textfield large")# 
					
				</div>
				
				<div class="column3-mid">
					
					#html.textField(name="icq", label="icq:", value="#prc.settings.icq#", class="textfield large")# 
						
					#html.textField(name="identi", label="identi:", value="#prc.settings.identi#", class="textfield large")# 
					
					#html.textField(name="imessage", label="imessage:", value="#prc.settings.imessage#", class="textfield large")# 
					
					#html.textField(name="instagram", label="instagram:", value="#prc.settings.instagram#", class="textfield large")# 
					
					#html.textField(name="itune", label="itune:", value="#prc.settings.itune#", class="textfield large")# 
					
					#html.textField(name="lastfm", label="lastfm:", value="#prc.settings.lastfm#", class="textfield large")# 
					
					#html.textField(name="linkedin", label="linkedin:", value="#prc.settings.linkedin#", class="textfield large")# 
					
					#html.textField(name="meetup", label="meetup:", value="#prc.settings.meetup#", class="textfield large")#
					
					#html.textField(name="microsoft", label="microsoft:", value="#prc.settings.microsoft#", class="textfield large")# 
					
					#html.textField(name="mobileme", label="mobileme:", value="#prc.settings.mobileme#", class="textfield large")# 
					
					#html.textField(name="msn", label="msn:", value="#prc.settings.msn#", class="textfield large")# 
					
					#html.textField(name="myspace", label="myspace:", value="#prc.settings.myspace#", class="textfield large")# 
					
					#html.textField(name="netvibes", label="netvibes:", value="#prc.settings.netvibes#", class="textfield large")# 
					
					#html.textField(name="newsvine", label="newsvine:", value="#prc.settings.newsvine#", class="textfield large")# 
					
					#html.textField(name="picasa", label="picasa:", value="#prc.settings.picasa#", class="textfield large")# 
					
					#html.textField(name="pinterest", label="pinterest:", value="#prc.settings.pinterest#", class="textfield large")# 
					
					#html.textField(name="podcast", label="podcast:", value="#prc.settings.podcast#", class="textfield large")# 
					
					#html.textField(name="posterous", label="posterous:", value="#prc.settings.posterous#", class="textfield large")# 
					
					#html.textField(name="quora", label="quora:", value="#prc.settings.quora#", class="textfield large")# 
					
					#html.textField(name="reddit", label="reddit:", value="#prc.settings.reddit#", class="textfield large")# 
					
					#html.textField(name="retweet", label="retweet:", value="#prc.settings.retweet#", class="textfield large")# 
					
					#html.textField(name="scribd", label="scribd:", value="#prc.settings.scribd#", class="textfield large")# 
					
					#html.textField(name="sharethis", label="sharethis:", value="#prc.settings.sharethis#", class="textfield large")# 
					
					
				</div>
				
				<div class="column3-right">
					
					#html.textField(name="skype", label="skype:", value="#prc.settings.skype#", class="textfield large")# 
					
					#html.textField(name="slashdot", label="slashdot:", value="#prc.settings.slashdot#", class="textfield large")# 
					
					#html.textField(name="slideshare", label="slideshare:", value="#prc.settings.slideshare#", class="textfield large")# 
					
					#html.textField(name="soundcloud", label="soundcloud:", value="#prc.settings.soundcloud#", class="textfield large")# 
					
					#html.textField(name="spotify", label="spotify:", value="#prc.settings.spotify#", class="textfield large")# 
					
					#html.textField(name="squidoo", label="squidoo:", value="#prc.settings.squidoo#", class="textfield large")# 
					
					#html.textField(name="stackoverflow", label="stackoverflow:", value="#prc.settings.stackoverflow#", class="textfield large")# 
						
					#html.textField(name="star", label="star:", value="#prc.settings.star#", class="textfield large")# 
					
					#html.textField(name="stumbleupon", label="stumbleupon:", value="#prc.settings.stumbleupon#", class="textfield large")# 
					
					#html.textField(name="technorati", label="technorati:", value="#prc.settings.technorati#", class="textfield large")# 
					
					#html.textField(name="tumblr", label="tumblr:", value="#prc.settings.tumblr#", class="textfield large")# 
					
					#html.textField(name="twitter_2", label="twitter_2:", value="#prc.settings.twitter_2#", class="textfield large")# 
					
					#html.textField(name="twitter", label="twitter:", value="#prc.settings.twitter#", class="textfield large")# 
					
					#html.textField(name="viddler", label="viddler:", value="#prc.settings.viddler#", class="textfield large")# 
					
					#html.textField(name="vimeo", label="vimeo:", value="#prc.settings.vimeo#", class="textfield large")# 
					
					#html.textField(name="wikepedia", label="wikepedia:", value="#prc.settings.wikepedia#", class="textfield large")# 
					
					#html.textField(name="wordpress_2", label="wordpress_2:", value="#prc.settings.wordpress_2#", class="textfield large")# 
					
					#html.textField(name="wordpress", label="wordpress:", value="#prc.settings.wordpress#", class="textfield large")# 
					
					#html.textField(name="xing", label="xing:", value="#prc.settings.xing#", class="textfield large")# 
					
					#html.textField(name="yahoo_buzz", label="yahoo_buzz:", value="#prc.settings.yahoo_buzz#", class="textfield large")# 
					
					#html.textField(name="yahoo", label="yahoo:", value="#prc.settings.yahoo#", class="textfield large")# 
					
					#html.textField(name="yelp", label="yelp:", value="#prc.settings.yelp#", class="textfield large")# 
					
					#html.textField(name="youtube", label="youtube:", value="#prc.settings.youtube#", class="textfield large")# 

				</div>
				
			</fieldset>	
			
				<div class="actionBar center">
					#html.submitButton(value="Save Settings",class="buttonred",title="Save the social media settings")#
				</div>
			#html.endForm()#

			<p>Developed by <a href="http://www.MitrahSoft.com" target="_blank" title="Dedicated ColdFusion development team">MitrahSoft</a></p>
		</div>
	</div>
</div>
</cfoutput>