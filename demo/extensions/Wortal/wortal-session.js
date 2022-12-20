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
