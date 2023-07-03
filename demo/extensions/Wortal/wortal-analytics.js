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

function wortalAnalytics_logSocialInvite(placement) {
    window.Wortal.analytics.logSocialInvite(placement);
}

function wortalAnalytics_logSocialShare(placement) {
    window.Wortal.analytics.logSocialShare(placement);
}

function wortalAnalytics_logPurchase(productID, details) {
    window.Wortal.analytics.logPurchase(productID, details);
}

function wortalAnalytics_logPurchaseSubscription(productID, details) {
    window.Wortal.analytics.logPurchaseSubscription(productID, details);
}
