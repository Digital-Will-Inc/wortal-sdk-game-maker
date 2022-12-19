const AD_EVENTS = {
    BEFORE_AD: 'BEFORE_AD',
    AFTER_AD: 'AFTER_AD',
    AD_DISMISSED: 'REWARD_SKIP',
    AD_VIEWED: 'REWARD_PLAYER',
}

function show_interstitial(placement, description) {
    window.Wortal.ads.showInterstitial(placement, description,
        () => _adCallback(AD_EVENTS.BEFORE_AD),
        () => _adCallback(AD_EVENTS.AFTER_AD))
}

function show_rewarded(description) {
    window.Wortal.ads.showRewarded(description,
        () => _adCallback(AD_EVENTS.BEFORE_AD),
        () => _adCallback(AD_EVENTS.AFTER_AD),
        () => _adCallback(AD_EVENTS.AD_DISMISSED),
        () => _adCallback(AD_EVENTS.AD_VIEWED))
}

function _adCallback(event) {
    var map = {};
    map["id"] = "wortal_ad_callback";
    map["event"] = event;
    GMS_API.send_async_event_social(map);
}
