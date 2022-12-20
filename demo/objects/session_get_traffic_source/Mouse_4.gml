// Check if any data exists before attempting to process it.
// The SDK may return an empty object here.
data = wortal_session_get_traffic_source();
if (data != undefined) {
	global.session_log += json_parse(data);
} else {
	global.session_log += "\nNo traffic source.";
}