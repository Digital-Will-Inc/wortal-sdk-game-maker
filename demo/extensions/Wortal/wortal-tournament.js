function wortalTournament_getCurrentAsync() {
    return window.Wortal.tournament.getCurrentAsync()
        .then(tournament => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_GET_CURRENT_CALLBACK, 1, tournament, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_GET_CURRENT_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalTournament_getAllAsync() {
    return window.Wortal.tournament.getAllAsync()
        .then(tournaments => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_GET_ALL_CALLBACK, 1, tournaments, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_GET_ALL_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalTournament_postScoreAsync(score) {
    return window.Wortal.tournament.postScoreAsync(score)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_POST_SCORE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_POST_SCORE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalTournament_createAsync(payload) {
    return window.Wortal.tournament.createAsync(JSON.parse(payload))
        .then(tournament => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_CREATE_CALLBACK, 1, tournament, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_CREATE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalTournament_shareAsync(payload) {
    return window.Wortal.tournament.shareAsync(JSON.parse(payload))
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_SHARE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_SHARE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalTournament_joinAsync(tournamentID) {
    return window.Wortal.tournament.joinAsync(tournamentID)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_JOIN_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.TOURNAMENT_JOIN_CALLBACK, 0, null, JSON.stringify(error));
        });
}
