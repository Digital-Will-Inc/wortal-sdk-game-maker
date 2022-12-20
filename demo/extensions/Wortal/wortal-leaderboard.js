function wortalLeaderboard_getLeaderboardAsync(name) {
    window.Wortal.leaderboard.getLeaderboardAsync(name)
        .then(leaderboard => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_LEADERBOARD_CALLBACK, 1, JSON.stringify(leaderboard), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_LEADERBOARD_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_sendEntryAsync(name, score, details = "") {
    window.Wortal.leaderboard.sendEntryAsync(name, score, details)
        .then(entry => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_SEND_ENTRY_CALLBACK, 1, JSON.stringify(entry), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_SEND_ENTRY_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getEntriesAsync(name, count, offset = 0) {
    window.Wortal.leaderboard.getEntriesAsync(name, count, offset)
        .then(entries => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_ENTRIES_CALLBACK, 1, JSON.stringify(entries), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_ENTRIES_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getPlayerEntryAsync(name) {
    window.Wortal.leaderboard.getPlayerEntryAsync(name)
        .then(entry => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_PLAYER_ENTRY_CALLBACK, 1, JSON.stringify(entry), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_PLAYER_ENTRY_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getEntryCountAsync(name) {
    window.Wortal.leaderboard.getEntryCountAsync(name)
        .then(entryCount => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_ENTRY_COUNT_CALLBACK, 1, entryCount, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_ENTRY_COUNT_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalLeaderboard_getConnectedPlayersEntriesAsync(name, count, offset) {
    window.Wortal.leaderboard.getConnectedPlayersEntriesAsync(name, count, offset)
        .then(entries => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK, 1, JSON.stringify(entries), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.LEADERBOARD_GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK, 0, null, JSON.stringify(error));
        });
}
