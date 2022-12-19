// First we check the ID of the social event.
var ID = async_load[? "id"];
if (ID != undefined) {
	// If the ID is for Leaderboard callbacks then we'll handle it here.
	if (ID == "wortal_leaderboard_callback")
	{
		global.leaderboard_log += "\nEvent Received : " + string(async_load[? "event"]);
		
		// Check for errors. 
		// Success == 0 if an error was caught.
		// Success == 1 if the call was successful.
		var errorFlag = async_load[? "success"];
		if (errorFlag == 0) {
			// The error will be returned as a JSON object.
			// Error.code contains the type of error that occurred.
			// Error.message has the details about the error.
			// Error.context lists the function that threw the exception.
			var error = async_load[? "error"];
			global.leaderboard_log += "\nError caught: " + string(json_parse(error));
			return;
		}
		
		// If the callback contains a return value, it will be stored in payload.
		// Void callbacks will not have a payload.
		var payload = async_load[? "payload"];
		
		// For leaderboards and leaderboard entry payloads there is a prefix property
		// that needs to be used to access the objects properties: _current.
		// Ex: leaderboardEntry._current.rank
		//	   leaderboardEntry._current.player.name
		
		switch(async_load[? "event"]) 
		{
			case "GET_LEADERBOARD_CALLBACK":
				// Payload is Leaderboard
				// https://sdk.html5gameportal.com/api/mleaderboard/
				leaderboard = json_parse(payload);
				global.leaderboard_log += "\nLeaderboard name: " + leaderboard._current.name;
				break;
			case "SEND_ENTRY_CALLBACK":
				// Payload is LeaderboardEntry
				// https://sdk.html5gameportal.com/api/mleaderboard-entry/
				entry = json_parse(payload);
				global.leaderboard_log += "\nEntry rank: " + string(entry._current.rank);
				break;
			case "GET_ENTRIES_CALLBACK":
				// Payload is LeaderboardEntry[]
				entries = json_parse(payload);
				global.leaderboard_log += "\nTop entry player: " + entries[0]._current.player.name;
				break;
			case "GET_PLAYER_ENTRY_CALLBACK":
				// Payload is LeaderboardEntry
				entry = json_parse(payload);
				global.leaderboard_log += "\nEntry rank: " + string(entry._current.rank);
				break;
			case "GET_ENTRY_COUNT":
				// Payload is number
				global.leaderboard_log += "\nEntry count: " + string(payload);
				break;
			case "GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK":
				// Payload is LeaderboardEntry[]
				entries = json_parse(payload);
				global.leaderboard_log += "\nTop entry player: " + entries[0]._current.player.name;
				break;
		}
	}
}