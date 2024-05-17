function wortalAchievements_getAchievementsAsync() {
    window.Wortal.achievements.getAchievementsAsync
        .then(achievements => {
            _wortalCallback(WORTAL_EVENTS.ACHIEVEMENTS_GET_ACHIEVEMENTS_CALLBACK, 1, JSON.stringify(achievements), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.ACHIEVEMENTS_GET_ACHIEVEMENTS_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalAchievements_unlockAchievementAsync(achievementId) {
    window.Wortal.achievements.unlockAchievementAsync(achievementId)
        .then(success => {
            _wortalCallback(WORTAL_EVENTS.ACHIEVEMENTS_UNLOCK_ACHIEVEMENT_CALLBACK, 1, success ? 1 : 0, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.ACHIEVEMENTS_UNLOCK_ACHIEVEMENT_CALLBACK, 0, null, JSON.stringify(error));
        });
}
