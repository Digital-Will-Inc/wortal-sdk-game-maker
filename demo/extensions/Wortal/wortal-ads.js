function wortalAds_showInterstitial(placement, description) {
    window.Wortal.ads.showInterstitial(placement, description,
        () => _wortalCallback(WORTAL_EVENTS.ADS_BEFORE_AD_CALLBACK),
        () => _wortalCallback(WORTAL_EVENTS.ADS_AFTER_AD_CALLBACK))
}

function wortalAds_showRewarded(description) {
    window.Wortal.ads.showRewarded(description,
        () => _wortalCallback(WORTAL_EVENTS.ADS_BEFORE_AD_CALLBACK),
        () => _wortalCallback(WORTAL_EVENTS.ADS_AFTER_AD_CALLBACK),
        () => _wortalCallback(WORTAL_EVENTS.ADS_AD_DISMISSED_CALLBACK),
        () => _wortalCallback(WORTAL_EVENTS.ADS_AD_VIEWED_CALLBACK))
}
