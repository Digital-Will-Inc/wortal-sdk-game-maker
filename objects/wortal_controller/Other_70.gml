var ID = async_load[? "id"];
if (ID != undefined) {
	if (ID == "wortal_callback")
	{
		global.testlog += "\nEvent Received : " + string(async_load[? "event"]);
		switch(async_load[? "event"]) 
		{
			case "BEFORE_AD":
			// Pause game and audio here.
			global.testlog += "[Game] BeforeAd Callback";
			break;
			case "AFTER_AD":
			// Resume game and audio here.
			global.testlog += "[Game] AfterAd Callback";
			break;
			case "REWARD_SKIP":
			// Do not reward the player - ad was skipped.
			global.testlog += "[Game] AdDismissed Callback";
			break;
			case "REWARD_PLAYER":
			// Reward player for watching the ad.
			global.testlog += "[Game] AdViewed Callback";
			break;
		}
	}
}