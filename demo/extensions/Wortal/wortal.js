/**
 * Wortal SDK for GameMaker.
 *
 * For callbacks, check the "event" property in Async - Social.
 *
 * Public API is denoted by under_bar naming convention to match extension functions declared in Wortal.yy
 * while private methods use _camelCase and should not be called by the game.
 */
const version = '1.0.1';

const gameName = document.title;
const platform = window.getWortalPlatform();
const browser = navigator.userAgent;

let gameTimer = 0;
let levelTimer = 0;
let levelTimerHandle;
let levelName = "";

_getIntlData()
    .then(response => _logGameStart(response))
    .catch(() => _logGameStart("Nulltherlands"));

window.addEventListener('visibilitychange', () => {
    if (document.visibilityState === "hidden") {
        _logGameEnd();
    }
});

/**
 * Shows an interstitial ad.
 * @param placement Placement type. Must be 'next', 'start', 'browse' or 'pause'
 * @param description Description of the ad placement. Ex: 'NextLevel'
 * @see https://developers.google.com/ad-placement/docs/placement-types for more info on placement types.
 */
function show_interstitial(placement, description) {
    if (isAdBlocked) {
        _wortalCallback('AFTER_AD');
        return;
    }

    window.triggerWortalAd(placement, linkInterstitialId, description, {
        beforeAd: () => {
            console.log("[Wortal] BeforeAd");
            _wortalCallback('BEFORE_AD');
        },
        afterAd: () => {
            console.log("[Wortal] AfterAd");
            _wortalCallback('AFTER_AD');
        },
        noShow: () => {
            console.log("[Wortal] NoShow");
            _wortalCallback('AFTER_AD');
        },
        noBreak: () => {
            // This is added for the 'link' platform as its timeout/no-fill callback has yet to be changed to noShow.
            console.log("[Wortal] NoBreak");
            _wortalCallback('AFTER_AD');
        },
        adBreakDone: () => {
            // This is called at the end of every ad on 'wortal' platform. We don't need to do anything here
            // because it would essentially duplicate the AFTER_AD callback.
            console.log("[Wortal] AdBreakDone");
        },
    });
}

/**
 * Shows a rewarded ad. Players should be rewarded only in the 'REWARD_PLAYER' callback.
 * @param description Description of the ad placement. Ex: 'ReviveAndContinue'
 */
function show_rewarded(description) {
    if (isAdBlocked) {
        _wortalCallback('AFTER_AD');
        _wortalCallback('REWARD_SKIP');
        return;
    }

    window.triggerWortalAd('reward', linkRewardedId, description, {
        beforeAd: () => {
            console.log("[Wortal] BeforeAd");
            _wortalCallback('BEFORE_AD');
        },
        afterAd: () => {
            console.log("[Wortal] AfterAd");
            _wortalCallback('AFTER_AD');
        },
        noShow: () => {
            console.log("[Wortal] NoShow");
            _wortalCallback('AFTER_AD');
        },
        noBreak: () => {
            // This is added for the 'link' platform as its timeout/no-fill callback has yet to be changed to noShow.
            console.log("[Wortal] NoBreak");
            _wortalCallback('AFTER_AD');
        },
        adDismissed: () => {
            console.log("[Wortal] AdDismissed");
            _wortalCallback('REWARD_SKIP');
        },
        adViewed: () => {
            console.log("[Wortal] AdViewed");
            _wortalCallback('REWARD_PLAYER');
        },
        beforeReward: (showAdFn) => {
            // This is called on the 'wortal' platform when a rewarded ad has been returned. We just need to call
            // showAdFn() to trigger the ad to be shown after it is returned.
            console.log("[Wortal] BeforeReward");
            showAdFn();
        },
        adBreakDone: () => {
            // This is called at the end of every ad on 'wortal' platform. We don't need to do anything here
            // because it would essentially duplicate the AFTER_AD callback.
            console.log("[Wortal] AdBreakDone");
        },
    });
}

function _wortalCallback(event) {
    var map = {};
    map["id"] = "wortal_callback";
    map["event"] = event;
    GMS_API.send_async_event_social(map);
}

/**
 * Logs the start of a level. Also starts the level timer.
 * @param level Level the player started.
 */
function log_level_start(level) {
    if (levelTimerHandle != null) {
        clearInterval(levelTimerHandle);
        levelTimerHandle = null;
    }
    levelName = level;
    levelTimer = 0;
    levelTimerHandle = setInterval(() => levelTimer += 1, 1000);
    _sendEvent("LevelStart", {
        game: gameName,
        level: level,
    });
}

/**
 * Logs the end of a level. If the level arg matches the level arg of the previous log_level_start call,
 * the event will include the time it took to complete the level. If not, the time value will be 0.
 * @param level Level the player ended.
 * @param score Score the player achieved.
 */
function log_level_end(level, score) {
    if (levelTimerHandle != null) {
        clearInterval(levelTimerHandle);
        levelTimerHandle = null;
    }
    if (levelName != level) {
        levelTimer = 0;
    }
    _sendEvent("LevelEnd", {
        game: gameName,
        level: level,
        time: levelTimer,
        score: score,
    });
    levelTimer = 0;
}

/**
 * Logs a level up.
 * @param level Level the player achieved.
 */
function log_level_up(level) {
    _sendEvent("LevelUp", {
        game: gameName,
        level: level,
    });
}

/**
 * Logs the player's score.
 * @param score Score the player achieved.
 */
function log_score(score) {
    _sendEvent("PostScore", {
        game: gameName,
        score: score,
    });
}

/**
 * Logs a game choice the player has made.
 * This can be a powerful tool for understanding how players are interacting with the game.
 * It can also help balance the game by providing data about what may or may not be favorable to the players.
 * @param decision Decision the player was faced with.
 * @param choice Choice the player made.
 * @example log_game_choice("Character", "Blue");
 */
function log_game_choice(decision, choice) {
    _sendEvent("GameChoice", {
        game: gameName,
        decision: decision,
        choice: choice,
    });
}

// Logs the beginning of the game. This is called automatically on initialization and should not be called by the game.
function _logGameStart(country) {
    _sendEvent("GameStart", {
        game: gameName,
        platform: platform,
        browser: browser,
        country: country,
    });
    setInterval(function () {
        if (document.visibilityState !== "hidden") {
            gameTimer += 1;
        }
    }, 1000);
}

// Logs the end of the game session.
function _logGameEnd() {
    _sendEvent("GameEnd", {
        game: gameName,
        timePlayed: gameTimer,
    });
}

// Sends an event to the analytics backend.
function _sendEvent(name, features) {
    let request = new XMLHttpRequest();
    request.open("POST", "https://wombat.digitalwill.co.jp/wortal/events");
    request.setRequestHeader("Content-Type", "application/json");
    request.send(JSON.stringify({name, features}));
}

// Loads the JSON file with time zone city/country mappings.
function _getIntlData() {
    return fetch('html5game/intl-data.json')
        .then(response => response.json())
        .then(data => _getPlayerCountry(data))
        .catch(error => console.log(error));
}

// This uses the time zone setting of the player to determine their country.
// We do this to avoid collecting any personal data on the player for GDPR compliance.
// The location is very coarse and easily spoofed so nothing here can identify the player.
function _getPlayerCountry(data) {
    if (data == null) {
        return "Nulltherlands";
    }
    const zone = Intl.DateTimeFormat().resolvedOptions().timeZone;
    const arr = zone.split("/");
    const city = arr[arr.length - 1];
    return data[city];
}
