// See the ContextPayload documentation for more details:
// https://sdk.html5gameportal.com/api/icontext-payload/

payload = {
	text : "Let's play!",
	image : "data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",
};

// Payload needs to be stringified before passing to the SDK.
wortal_context_share_async(json_stringify(payload));