function wortalPlayer_getID() {
    return window.Wortal.player.getID();
}

function wortalPlayer_getName() {
    return window.Wortal.player.getName();
}

function wortalPlayer_getPhoto() {
    return window.Wortal.player.getPhoto();
}

function wortalPlayer_isFirstPlay() {
    return window.Wortal.player.isFirstPlay() ? 1 : 0;
}

function wortalPlayer_getDataAsync(keys) {
    window.Wortal.player.getDataAsync(keys)
        .then(data => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_DATA_CALLBACK, 1, JSON.stringify(data), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_DATA_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_setDataAsync(data) {
    window.Wortal.player.setDataAsync(JSON.parse(data))
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_SET_DATA_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_SET_DATA_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_flushDataAsync() {
    window.Wortal.player.flushDataAsync()
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_FLUSH_DATA_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_FLUSH_DATA_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_getConnectedPlayersAsync(payload) {
    let payloadObj;
    if (payload) {
        payloadObj = JSON.parse(payload);
    }
    window.Wortal.player.getConnectedPlayersAsync(payloadObj)
        .then(players => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_CONNECTED_PLAYERS_CALLBACK, 1, JSON.stringify(players), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_CONNECTED_PLAYERS_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_getSignedPlayerInfoAsync() {
    window.Wortal.player.getSignedPlayerInfoAsync()
        .then(info => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_SIGNED_PLAYER_INFO_CALLBACK, 1, JSON.stringify(info), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_SIGNED_PLAYER_INFO_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_getASIDAsync() {
    window.Wortal.player.getASIDAsync()
        .then(asid => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_ASID_CALLBACK, 1, asid, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_ASID_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_getSignedASIDAsync() {
    window.Wortal.player.getSignedASIDAsync()
        .then(signedASID => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_SIGNED_ASID_CALLBACK, 1, JSON.stringify(signedASID), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_GET_SIGNED_ASID_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_canSubscribeBotAsync() {
    window.Wortal.player.canSubscribeBotAsync()
        .then(canSubscribe => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_CAN_SUBSCRIBE_BOT_CALLBACK, 1, canSubscribe ? 1 : 0, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_CAN_SUBSCRIBE_BOT_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_subscribeBotAsync() {
    window.Wortal.player.subscribeBotAsync()
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_SUBSCRIBE_BOT_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.PLAYER_SUBSCRIBE_BOT_CALLBACK, 0, null, JSON.stringify(error));
        });
}
