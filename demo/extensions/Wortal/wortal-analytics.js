function wortalAnalytics_logLevelStart(level) {
    window.Wortal.analytics.logLevelStart(level);
}

function wortalAnalytics_logLevelEnd(level, score, wasCompleted) {
    window.Wortal.analytics.logLevelEnd(level, score, wasCompleted);
}

function wortalAnalytics_logLevelUp(level) {
    window.Wortal.analytics.logLevelUp(level);
}

function wortalAnalytics_logScore(score) {
    window.Wortal.analytics.logScore(score);
}

function wortalAnalytics_logTutorialStart(tutorial) {
    window.Wortal.analytics.logTutorialStart(tutorial);
}

function wortalAnalytics_logTutorialEnd(tutorial, wasCompleted) {
    window.Wortal.analytics.logTutorialEnd(tutorial, wasCompleted);
}

function wortalAnalytics_logGameChoice(decision, choice) {
    window.Wortal.analytics.logGameChoice(decision, choice);
}
