function log_level_start(level) {
    window.Wortal.analytics.logLevelStart(level);
}

function log_level_end(level, score, wasCompleted) {
    window.Wortal.analytics.logLevelEnd(level, score, wasCompleted);
}

function log_level_up(level) {
    window.Wortal.analytics.logLevelUp(level);
}

function log_score(score) {
    window.Wortal.analytics.logScore(score);
}

function log_tutorial_start(tutorial) {
    window.Wortal.analytics.logTutorialStart(tutorial);
}

function log_tutorial_end(tutorial, wasCompleted) {
    window.Wortal.analytics.logTutorialEnd(tutorial, wasCompleted);
}

function log_game_choice(decision, choice) {
    window.Wortal.analytics.logGameChoice(decision, choice);
}
