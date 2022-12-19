var ID = async_load[? "id"];
if (ID != undefined) {
	if (ID == "wortal_ad_callback")
	{
		global.ad_log += "\nEvent Received : " + string(async_load[? "event"]);
		switch(async_load[? "event"]) 
		{
			case "BEFORE_AD":
			// Pause game and audio here.
			break;
			case "AFTER_AD":
			// Resume game and audio here.
			break;
			case "REWARD_SKIP":
			// Do not reward the player - ad was skipped.
			break;
			case "REWARD_PLAYER":
			// Reward player for watching the ad.
			break;
		}
	}
}