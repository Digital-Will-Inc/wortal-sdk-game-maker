const CONTEXT_EVENTS = {
    CHOOSE_CALLBACK: 'CHOOSE_CALLBACK',
    CREATE_CALLBACK: 'CREATE_CALLBACK',
    SWITCH_CALLBACK: 'SWITCH_CALLBACK',
    SHARE_CALLBACK: 'SHARE_CALLBACK',
    UPDATE_CALLBACK: 'UPDATE_CALLBACK',
}

function wortalContext_getId() {
    return window.Wortal.context.getId();
}

function wortalContext_chooseAsync(payload) {
    window.Wortal.context.chooseAsync(JSON.parse(payload))
        .then(() => {
            _contextCallback(CONTEXT_EVENTS.CHOOSE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _contextCallback(CONTEXT_EVENTS.CHOOSE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_createAsync(playerId) {
    window.Wortal.context.createAsync(playerId)
        .then(() => {
            _contextCallback(CONTEXT_EVENTS.CREATE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _contextCallback(CONTEXT_EVENTS.CREATE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_switchAsync(contextId) {
    window.Wortal.context.switchAsync(contextId)
        .then(() => {
            _contextCallback(CONTEXT_EVENTS.SWITCH_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _contextCallback(CONTEXT_EVENTS.SWITCH_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_shareAsync(payload) {
    window.Wortal.context.shareAsync(JSON.parse(payload))
        .then(shareResult => {
            _contextCallback(CONTEXT_EVENTS.SHARE_CALLBACK, 1, shareResult, null);
        })
        .catch(error => {
            _contextCallback(CONTEXT_EVENTS.SHARE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_updateAsync(payload) {
    window.Wortal.context.updateAsync(JSON.parse(payload))
        .then(() => {
            _contextCallback(CONTEXT_EVENTS.UPDATE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _contextCallback(CONTEXT_EVENTS.UPDATE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function _contextCallback(event, success, payload, error) {
    var map = {};
    map["id"] = "wortal_context_callback";
    map["event"] = event;
    map["success"] = success;
    map["payload"] = payload;
    map["error"] = error;
    GMS_API.send_async_event_social(map);
}
