global.productId = "";
global.purchaseToken = "";

// First we check the ID of the social event.
var ID = async_load[? "id"];
if (ID != undefined) {
	// If the ID is for IAP callbacks then we'll handle it here.
	if (ID == "wortal_iap_callback")
	{
		global.iap_log += "\nEvent Received : " + string(async_load[? "event"]);
		
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
			global.iap_log += "\nError caught: " + string(json_parse(error));
			return;
		}
		
		// If the callback contains a return value, it will be stored in payload.
		// Void callbacks will not have a payload.
		var payload = async_load[? "payload"];
		
		switch(async_load[? "event"]) 
		{
			case "GET_CATALOG_CALLBACK":
			// Payload is Product[]
			// https://sdk.html5gameportal.com/api/iproduct/
			products = json_parse(payload);
			global.productId = products[0].productID;
			global.iap_log += "\nProduct ID: " + global.productId;
			break;
			case "GET_PURCHASES_CALLBACK":
			// Payload is Purchase[]
			// https://sdk.html5gameportal.com/api/ipurchase/
			purchases = json_parse(payload);
			global.purchaseToken = purchases[0].purchaseToken;
			global.iap_log += "\nPurchase token: " + global.purchaseToken;
			break;
			case "MAKE_PURCHASE_CALLBACK":
			// Payload is Purchase
			purchase = json_parse(payload);
			global.iap_log += purchase.purchaseToken;
			break;
			case "CONSUME_PURCHASE_CALLBACK":
			// Void callback
			global.iap_log += "Purchase consumed!";
			break;
		}
	}
}