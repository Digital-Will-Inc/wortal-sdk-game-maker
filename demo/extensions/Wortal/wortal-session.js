function wortalSession_getEntryPointData() {
    return JSON.stringify(window.Wortal.session.getEntryPointData());
}

function wortalSession_getEntryPointAsync() {
    window.Wortal.session.getEntryPointAsync()
        .then(entryPoint => {
            _wortalCallback(WORTAL_EVENTS.SESSION_GET_ENTRY_POINT_CALLBACK, 1, entryPoint, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.SESSION_GET_ENTRY_POINT_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalSession_setSessionData(data) {
    window.Wortal.session.setSessionData(JSON.parse(data));
}

function wortalSession_getLocale() {
    return window.Wortal.session.getLocale();
}

function wortalSession_getTrafficSource() {
    return JSON.stringify(window.Wortal.session.getTrafficSource);
}

function wortalSession_getPlatform() {
    return window.Wortal.session.getPlatform();
}

function wortalSession_getDevice() {
    return window.Wortal.session.getDevice();
}

function wortalSession_getOrientation() {
    return window.Wortal.session.getOrientation();
}

function wortalSession_onOrientationChange() {
    window.Wortal.session.onOrientationChange(orientation => {
        _wortalCallback(WORTAL_EVENTS.SESSION_ON_ORIENTATION_CHANGE_CALLBACK, 1, orientation, null);
    });
}

function wortalSession_switchGameAsync(gameID) {
    window.Wortal.session.switchGameAsync(gameID)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.SESSION_SWITCH_GAME_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.SESSION_SWITCH_GAME_CALLBACK, 0, null, JSON.stringify(error));
        });
}
