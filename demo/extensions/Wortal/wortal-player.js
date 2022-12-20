const PLAYER_EVENTS = {
    GET_DATA_CALLBACK: "GET_DATA_CALLBACK",
    SET_DATA_CALLBACK: "SET_DATA_CALLBACK",
    GET_CONNECTED_PLAYERS_CALLBACK: "GET_CONNECTED_PLAYERS_CALLBACK",
    GET_SIGNED_PLAYER_INFO_CALLBACK: "GET_SIGNED_PLAYER_INFO_CALLBACK",
}

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
            _playerCallback(PLAYER_EVENTS.GET_DATA_CALLBACK, 1, JSON.stringify(data), null);
        })
        .catch(error => {
            _playerCallback(PLAYER_EVENTS.GET_DATA_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_setDataAsync(data) {
    window.Wortal.player.setDataAsync(JSON.parse(data))
        .then(() => {
            _playerCallback(PLAYER_EVENTS.SET_DATA_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _playerCallback(PLAYER_EVENTS.SET_DATA_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_getConnectedPlayersAsync(payload) {
    let payloadObj;
    if (payload) {
        payloadObj = JSON.parse(payload);
    }
    window.Wortal.player.getConnectedPlayersAsync(payloadObj)
        .then(players => {
            _playerCallback(PLAYER_EVENTS.GET_CONNECTED_PLAYERS_CALLBACK, 1, JSON.stringify(players), null);
        })
        .catch(error => {
            _playerCallback(PLAYER_EVENTS.GET_CONNECTED_PLAYERS_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalPlayer_getSignedPlayerInfoAsync() {
    window.Wortal.player.getSignedPlayerInfoAsync()
        .then(info => {
            _playerCallback(PLAYER_EVENTS.GET_SIGNED_PLAYER_INFO_CALLBACK, 1, JSON.stringify(info), null);
        })
        .catch(error => {
            _playerCallback(PLAYER_EVENTS.GET_SIGNED_PLAYER_INFO_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function _playerCallback(event, success, payload, error) {
    var map = {};
    map["id"] = "wortal_player_callback";
    map["event"] = event;
    map["success"] = success;
    map["payload"] = payload;
    map["error"] = error;
    GMS_API.send_async_event_social(map);
}
