var isAdBlocked = false;
var linkInterstitialId = "";
var linkRewardedId = "";

window.addEventListener("load", () => {
    let platform = window.getWortalPlatform();
    console.log('[Wortal] Platform: ' + platform);
    window.initWortal(function () {
        console.log("[Wortal] Initializing..");
        if (platform === 'link') {
            if (window.wortalGame) {
                window.wortalGame.initializeAsync().then(() => {
                    _removeLoadingCover();
                    window.wortalGame.setLoadingProgress(100);
                    window.wortalGame.startGameAsync();
                    _getLinkAdUnitIds();
                });
            }
        } else if (platform === 'viber') {
            if (window.wortalGame) {
                window.wortalGame.initializeAsync().then(() => {
                    _removeLoadingCover();
                    window.wortalGame.setLoadingProgress(100);
                    window.wortalGame.startGameAsync();
                });
            }
        } else {
            window.triggerWortalAd("preroll", "", "Preroll", {
                adBreakDone: function () {
                    console.log("[Wortal] AdBreakDone");
                    _removeLoadingCover();
                },
                noShow: function () {
                    console.log("[Wortal] NoShow");
                    _removeLoadingCover();
                }
            });
        }
        console.log("[Wortal] Initialized");
    }, function () {
        console.log("[Wortal] Ad blocker detected.");
        _removeLoadingCover();
        isAdBlocked = true;
    });
});

function _getLinkAdUnitIds() {
    window.wortalGame.getAdUnitsAsync().then((adUnits) => {
        console.log("[Wortal] Link AdUnit IDs returned: \n" + adUnits);
        linkInterstitialId = adUnits[0].id;
        linkRewardedId = adUnits[1].id;
    });
}

function _removeLoadingCover() {
    document.getElementById("loading-cover").style.display = "none";
}
