// First we check the ID of the social event.
var ID = async_load[? "id"];
if (ID != undefined) {
	if (ID == "wortal_callback")
	{
		global.session_log += "\nEvent Received : " + string(async_load[? "event"]);
		
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
			global.session_log += "\nError caught: " + string(json_parse(error));
			return;
		}
		
		// If the callback contains a return value, it will be stored in payload.
		// Void callbacks will not have a payload.
		var payload = async_load[? "payload"];
		
		switch(async_load[? "event"]) 
		{
			case "SESSION_GET_ENTRY_POINT_CALLBACK":
				// Payload is string.
				global.session_log += "\nEntry point: " + payload;
				break;
		}
	}
}