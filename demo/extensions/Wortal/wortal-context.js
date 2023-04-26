function wortalContext_getId() {
    return window.Wortal.context.getId();
}

function wortalContext_getType() {
    return window.Wortal.context.getType();
}

function wortalContext_getPlayersAsync() {
    window.Wortal.context.getPlayersAsync()
        .then(players => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_GET_PLAYERS_CALLBACK, 1, JSON.stringify(players), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_GET_PLAYERS_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_chooseAsync(payload) {
    window.Wortal.context.chooseAsync(JSON.parse(payload))
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_CHOOSE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_CHOOSE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_createAsync(playerId) {
    window.Wortal.context.createAsync(playerId)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_CREATE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_CREATE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_switchAsync(contextId) {
    window.Wortal.context.switchAsync(contextId)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_SWITCH_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_SWITCH_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_shareAsync(payload) {
    window.Wortal.context.shareAsync(JSON.parse(payload))
        .then(shareResult => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_SHARE_CALLBACK, 1, shareResult, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_SHARE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_shareLinkAsync(payload) {
    window.Wortal.context.shareLinkAsync(JSON.parse(payload))
        .then(shareResult => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_SHARE_LINK_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_SHARE_LINK_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_updateAsync(payload) {
    window.Wortal.context.updateAsync(JSON.parse(payload))
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_UPDATE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.CONTEXT_UPDATE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalContext_isSizeBetween(minSize, maxSize) {
    return window.Wortal.context.isSizeBetween(minSize, maxSize);
}
