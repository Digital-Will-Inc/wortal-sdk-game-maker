const LEADERBOARD_EVENTS = {
    GET_LEADERBOARD_CALLBACK: "GET_LEADERBOARD_CALLBACK",
    SEND_ENTRY_CALLBACK: "SEND_ENTRY_CALLBACK",
    GET_ENTRIES_CALLBACK: "GET_ENTRIES_CALLBACK",
    GET_PLAYER_ENTRY_CALLBACK: "GET_PLAYER_ENTRY_CALLBACK",
    GET_ENTRY_COUNT: "GET_ENTRY_COUNT",
    GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK: "GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK",
}

function wortalLeaderboard_getLeaderboardAsync(name) {
    window.Wortal.leaderboard.getLeaderboardAsync(name)
        .then(leaderboard => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_LEADERBOARD_CALLBACK, 1, JSON.stringify(leaderboard), null);
        })
        .catch(error => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_LEADERBOARD_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_sendEntryAsync(name, score, details = "") {
    window.Wortal.leaderboard.sendEntryAsync(name, score, details)
        .then(entry => {
            _leaderboardCallback(LEADERBOARD_EVENTS.SEND_ENTRY_CALLBACK, 1, JSON.stringify(entry), null);
        })
        .catch(error => {
            _leaderboardCallback(LEADERBOARD_EVENTS.SEND_ENTRY_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getEntriesAsync(name, count, offset = 0) {
    window.Wortal.leaderboard.getEntriesAsync(name, count, offset)
        .then(entries => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_ENTRIES_CALLBACK, 1, JSON.stringify(entries), null);
        })
        .catch(error => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_ENTRIES_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getPlayerEntryAsync(name) {
    window.Wortal.leaderboard.getPlayerEntryAsync(name)
        .then(entry => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_PLAYER_ENTRY_CALLBACK, 1, JSON.stringify(entry), null);
        })
        .catch(error => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_PLAYER_ENTRY_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getEntryCountAsync(name) {
    window.Wortal.leaderboard.getEntryCountAsync(name)
        .then(entryCount => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_ENTRY_COUNT, 1, entryCount, null);
        })
        .catch(error => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_ENTRY_COUNT, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getConnectedPlayersEntriesAsync(name, count, offset) {
    window.Wortal.leaderboard.getConnectedPlayersEntriesAsync(name, count, offset)
        .then(entries => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK, 1, JSON.stringify(entries), null);
        })
        .catch(error => {
            _leaderboardCallback(LEADERBOARD_EVENTS.GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function _leaderboardCallback(event, success, payload, error) {
    var map = {};
    map["id"] = "wortal_leaderboard_callback";
    map["event"] = event;
    map["success"] = success;
    map["payload"] = payload;
    map["error"] = error;
    GMS_API.send_async_event_social(map);
}
