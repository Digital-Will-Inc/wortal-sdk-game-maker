function wortalNotifications_scheduleAsync(payload) {
    window.Wortal.notifications.scheduleAsync(payload)
        .then(notification => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_SCHEDULE_CALLBACK, 1, JSON.stringify(notification), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_SCHEDULE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalNotifications_getHistoryAsync() {
    window.Wortal.notifications.getHistoryAsync()
        .then(notifications => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_GET_HISTORY_CALLBACK, 1, JSON.stringify(notifications), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_GET_HISTORY_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalNotifications_cancelAsync(id) {
    window.Wortal.notifications.cancelAsync(id)
        .then(success => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_CANCEL_CALLBACK, 1, success ? 1 : 0, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_CANCEL_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalNotifications_cancelAllAsync(label) {
    window.Wortal.notifications.cancelAllAsync(label)
        .then(success => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_CANCEL_ALL_CALLBACK, 1, success ? 1 : 0, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.NOTIFICATIONS_CANCEL_ALL_CALLBACK, 0, null, JSON.stringify(error));
        });
}
