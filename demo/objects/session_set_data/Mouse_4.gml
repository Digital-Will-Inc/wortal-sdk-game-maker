data = {
	levelsCompleted: 2,
	restarts: 1,
}

// Data needs to be stringified JSON.
wortal_session_set_session_data(json_stringify(data));
global.session_log += "\nData set.";