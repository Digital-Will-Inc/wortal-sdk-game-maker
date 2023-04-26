const WORTAL_EVENTS = {
    ON_PAUSE_CALLBACK: "ON_PAUSE_CALLBACK",
    ADS_BEFORE_AD_CALLBACK: "ADS_BEFORE_AD_CALLBACK",
    ADS_AFTER_AD_CALLBACK: "ADS_AFTER_AD_CALLBACK",
    ADS_AD_DISMISSED_CALLBACK: "ADS_AD_DISMISSED_CALLBACK",
    ADS_AD_VIEWED_CALLBACK: "ADS_AD_VIEWED_CALLBACK",
    ADS_NO_FILL_CALLBACK: "ADS_NO_FILL_CALLBACK",
    CONTEXT_GET_PLAYERS_CALLBACK: "CONTEXT_GET_PLAYERS_CALLBACK",
    CONTEXT_CHOOSE_CALLBACK: "CONTEXT_CHOOSE_CALLBACK",
    CONTEXT_CREATE_CALLBACK: "CONTEXT_CREATE_CALLBACK",
    CONTEXT_SWITCH_CALLBACK: "CONTEXT_SWITCH_CALLBACK",
    CONTEXT_SHARE_CALLBACK: "CONTEXT_SHARE_CALLBACK",
    CONTEXT_SHARE_LINK_CALLBACK: "CONTEXT_SHARE_LINK_CALLBACK",
    CONTEXT_UPDATE_CALLBACK: "CONTEXT_UPDATE_CALLBACK",
    IAP_GET_CATALOG_CALLBACK: "IAP_GET_CATALOG_CALLBACK",
    IAP_GET_PURCHASES_CALLBACK: "IAP_GET_PURCHASES_CALLBACK",
    IAP_MAKE_PURCHASE_CALLBACK: "IAP_MAKE_PURCHASE_CALLBACK",
    IAP_CONSUME_PURCHASE_CALLBACK: "IAP_CONSUME_PURCHASE_CALLBACK",
    LEADERBOARD_GET_LEADERBOARD_CALLBACK: "LEADERBOARD_GET_LEADERBOARD_CALLBACK",
    LEADERBOARD_SEND_ENTRY_CALLBACK: "LEADERBOARD_SEND_ENTRY_CALLBACK",
    LEADERBOARD_GET_ENTRIES_CALLBACK: "LEADERBOARD_GET_ENTRIES_CALLBACK",
    LEADERBOARD_GET_PLAYER_ENTRY_CALLBACK: "LEADERBOARD_GET_PLAYER_ENTRY_CALLBACK",
    LEADERBOARD_GET_ENTRY_COUNT_CALLBACK: "LEADERBOARD_GET_ENTRY_COUNT_CALLBACK",
    LEADERBOARD_GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK: "LEADERBOARD_GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK",
    PLAYER_GET_DATA_CALLBACK: "PLAYER_GET_DATA_CALLBACK",
    PLAYER_SET_DATA_CALLBACK: "PLAYER_SET_DATA_CALLBACK",
    PLAYER_FLUSH_DATA_CALLBACK: "PLAYER_FLUSH_DATA_CALLBACK",
    PLAYER_GET_CONNECTED_PLAYERS_CALLBACK: "PLAYER_GET_CONNECTED_PLAYERS_CALLBACK",
    PLAYER_GET_SIGNED_PLAYER_INFO_CALLBACK: "PLAYER_GET_SIGNED_PLAYER_INFO_CALLBACK",
    PLAYER_GET_ASID_CALLBACK: "PLAYER_GET_ASID_CALLBACK",
    PLAYER_GET_SIGNED_ASID_CALLBACK: "PLAYER_GET_SIGNED_ASID_CALLBACK",
    PLAYER_CAN_SUBSCRIBE_BOT_CALLBACK: "PLAYER_CAN_SUBSCRIBE_BOT_CALLBACK",
    PLAYER_SUBSCRIBE_BOT_CALLBACK: "PLAYER_SUBSCRIBE_BOT_CALLBACK",
    SESSION_GET_ENTRY_POINT_CALLBACK: "SESSION_GET_ENTRY_POINT_CALLBACK",
};

function _wortalCallback(event, success, payload, error) {
    var map = {};
    map["id"] = "wortal_callback";
    map["event"] = event;
    map["success"] = success;
    map["payload"] = payload;
    map["error"] = error;
    GMS_API.send_async_event_social(map);
}

if (window.Wortal) {
    window.Wortal.onPause(() => _wortalCallback(WORTAL_EVENTS.ON_PAUSE_CALLBACK));
}
