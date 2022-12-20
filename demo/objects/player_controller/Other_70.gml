// First we check the ID of the social event.
var ID = async_load[? "id"];
if (ID != undefined) {
	// If the ID is for Player callbacks then we'll handle it here.
	if (ID == "wortal_player_callback")
	{
		global.player_log += "\nEvent Received : " + string(async_load[? "event"]);
		
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
			global.player_log += "\nError caught: " + string(json_parse(error));
			return;
		}
		
		// If the callback contains a return value, it will be stored in payload.
		// Void callbacks will not have a payload.
		var payload = async_load[? "payload"];
		
		switch(async_load[? "event"]) 
		{
			case "GET_DATA_CALLBACK":
				// Payload is developer-defined.
				// Example data: 
				// {
				//	 items: 
				//   {
				//		coins: 100,
				//		boosters: 2,
				//   },
				//   lives: 3
				// }
				data = json_parse(payload);
				global.player_log += "\nCoins count: " + string(data.items.coins);
				break;
			case "SET_DATA_CALLBACK":
				// Void callback
				global.player_log += "Player data set.";
				break;
			case "GET_CONNECTED_PLAYERS_CALLBACK":
				// Payload is Player[]
				// https://sdk.html5gameportal.com/api/mplayer/
				// Player properties must be prefixed with _current.
				// Ex: players[2]._current.name;
				players = json_parse(payload);
				global.player_log += "\nFirst player: " + players[0]._current.name;
				break;
			case "GET_SIGNED_PLAYER_INFO_CALLBACK":
				// Payload is object with player ID and signature.
				// https://sdk.html5gameportal.com/api/signature/
				info = json_parse(payload);
				global.player_log += "\nSignature: " + info.signature;
				break;
		}
	}
}