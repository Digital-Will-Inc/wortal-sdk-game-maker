var ID = async_load[? "id"];
if (ID != undefined) {
	if (ID == "wortal_callback")
	{
		// Ad callbacks will only contain the event property.
		global.ad_log += "\nEvent Received : " + string(async_load[? "event"]);
		switch(async_load[? "event"]) 
		{
			case "ADS_BEFORE_AD_CALLBACK":
			// Pause game and audio here.
			break;
			case "ADS_AFTER_AD_CALLBACK":
			// Resume game and audio here.
			break;
			case "ADS_AD_DISMISSED_CALLBACK":
			// Do not reward the player - ad was skipped.
			break;
			case "ADS_AD_VIEWED_CALLBACK":
			// Reward player for watching the ad.
			break;
		}
	}
}