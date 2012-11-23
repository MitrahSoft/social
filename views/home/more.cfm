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
					#html.href(href ="cbadmin.module.social.home",text ="Basic social icons")#
				</div>
				
			<fieldset>
				
				<legend><img src="#prc.cbRoot#/includes/images/settings_black.png" alt="modifiers"/> <strong>More social media icons</strong></legend>
				
				<div class="column3-left">

					#html.textField(name="500px", label="500px :", value="#prc.settings.500px#", class="textfield large")#

					#html.textField(name="bebo", label="bebo:", value="#prc.settings.bebo#", class="textfield large")# 
					
					#html.textField(name="blip", label="blip:", value="#prc.settings.blip#", class="textfield large")#
					
					#html.textField(name="coroflot", label="coroflot:", value="#prc.settings.coroflot#", class="textfield large")# 
						
					#html.textField(name="daytum", label="daytum:", value="#prc.settings.daytum#", class="textfield large")# 
						
					#html.textField(name="design_bump", label="design_bump:", value="#prc.settings.design_bump#", class="textfield large")# 
						
					#html.textField(name="dopplr", label="dopplr:", value="#prc.settings.dopplr#", class="textfield large")# 
					
					#html.textField(name="dribbble", label="dribbble:", value="#prc.settings.dribbble#", class="textfield large")# 
						
					#html.textField(name="drupal", label="drupal:", value="#prc.settings.drupal#", class="textfield large")# 
						
					#html.textField(name="ember", label="ember:", value="#prc.settings.ember#", class="textfield large")# 
					
					#html.textField(name="etsy", label="etsy:", value="#prc.settings.etsy#", class="textfield large")# 
							
				</div>
				
				<div class="column3-mid">		
					 
					#html.textField(name="foodspotting", label="foodspotting:", value="#prc.settings.foodspotting#", class="textfield large")# 
					 
					#html.textField(name="forrst", label="forrst:", value="#prc.settings.forrst#", class="textfield large")# 
					 
					#html.textField(name="gdgt", label="gdgt:", value="#prc.settings.gdgt#", class="textfield large")# 
					 
					#html.textField(name="gowalla_2", label="gowalla_2:", value="#prc.settings.gowalla_2#", class="textfield large")# 
					 
					#html.textField(name="gowalla", label="gowalla:", value="#prc.settings.gowalla#", class="textfield large")# 
					 
					#html.textField(name="grooveshark", label="grooveshark:", value="#prc.settings.grooveshark#", class="textfield large")# 
					 
					#html.textField(name="heart", label="heart:", value="#prc.settings.heart#", class="textfield large")# 
					 
					#html.textField(name="hyves", label="hyves:", value="#prc.settings.hyves#", class="textfield large")# 
					 
					#html.textField(name="icondock", label="icondock:", value="#prc.settings.icondock#", class="textfield large")# 
					 
					#html.textField(name="metacafe", label="metacafe:", value="#prc.settings.metacafe#", class="textfield large")# 
				
				</div>
				
				<div class="column3-right">
					
					#html.textField(name="mister_wong", label="mister_wong:", value="#prc.settings.mister_wong#", class="textfield large")# 
					
					#html.textField(name="mixx", label="mixx:", value="#prc.settings.mixx#", class="textfield large")# 
					
					#html.textField(name="paypal", label="paypal:", value="#prc.settings.paypal#", class="textfield large")# 
					
					#html.textField(name="photobucket", label="photobucket:", value="#prc.settings.photobucket#", class="textfield large")# 
					
					#html.textField(name="qik", label="qik:", value="#prc.settings.qik#", class="textfield large")# 
					
					#html.textField(name="smugmug", label="smugmug:", value="#prc.settings.smugmug#", class="textfield large")# 
					
					#html.textField(name="social_behence", label="social_behence:", value="#prc.settings.social_behence#", class="textfield large")# 
					
					#html.textField(name="social_designfloat", label="social_designfloat:", value="#prc.settings.social_designfloat#", class="textfield large")# 
					
					#html.textField(name="virb", label="virb:", value="#prc.settings.virb#", class="textfield large")# 
					
					#html.textField(name="w3", label="w3:", value="#prc.settings.w3#", class="textfield large")# 
				
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