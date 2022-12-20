// Check if any data exists before attempting to process it.
// The SDK may return an empty object here.
data = wortal_session_get_entry_point_data();
if (data != undefined) {
	global.session_log += "\n" + data;
} else {
	global.session_log += "\nNo entry point data.";
}
