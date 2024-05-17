function wortalStats_getStatsAsync(level, payload) {
    window.Wortal.stats.getStatsAsync(level, payload)
        .then(stats => {
            _wortalCallback(WORTAL_EVENTS.STATS_GET_STATS_CALLBACK, 1, JSON.stringify(stats), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.STATS_GET_STATS_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalStats_postStatsAsync(level, value, payload) {
    window.Wortal.stats.postStatsAsync(level, value, payload)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.STATS_POST_STATS_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.STATS_POST_STATS_CALLBACK, 0, null, JSON.stringify(error));
        });
}
