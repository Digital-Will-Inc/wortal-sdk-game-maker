{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "Wortal",
  "androidactivityinject": "",
  "androidclassname": "",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [],
  "androidProps": false,
  "androidsourcedir": "",
  "author": "Digital Will",
  "classname": "",
  "copyToTargets": 32,
  "date": "2022-09-27T09:56:42.1953214+09:00",
  "description": "Wortal SDK for GameMaker",
  "exportToGame": true,
  "extensionVersion": "2.3.0",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-ads.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_ads_show_interstitial","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"wortalAds_showInterstitial","help":"wortal_ads_show_interstitial(placementType, description);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_ads_show_rewarded","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAds_showRewarded","help":"wortal_ads_show_rewarded(description);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_ads_is_ad_blocked","argCount":0,"args":[],"documentation":"","externalName":"wortalAds_isAdBlocked","help":"wortal_ads_is_ad_blocked()","hidden":false,"kind":5,"returnType":2,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-analytics.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_level_start","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logLevelStart","help":"wortal_analytics_log_level_start(level);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_level_end","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"","externalName":"wortalAnalytics_logLevelEnd","help":"wortal_analytics_log_level_end(level, score, wasCompleted);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_level_up","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logLevelUp","help":"wortal_analytics_log_level_up(level);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_score","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logScore","help":"wortal_analytics_log_score(score);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_game_choice","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logGameChoice","help":"wortal_analytics_log_game_choice(decision, choice);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_tutorial_start","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logTutorialStart","help":"wortal_analytics_log_tutorial_start(tutorial);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_tutorial_end","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"wortalAnalytics_logTutorialEnd","help":"wortal_analytics_log_tutorial_end(tutorial, wasCompleted);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_social_invite","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logSocialInvite","help":"wortal_analytics_log_social_invite(placement);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_social_share","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logSocialShare","help":"wortal_analytics_log_social_share(placement);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_purchase","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logPurchase","help":"wortal_analytics_log_purchase(productID, details);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_purchase_subscription","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"wortalAnalytics_logPurchaseSubscription","help":"wortal_analytics_log_purchase_subscription(productID, details);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[
        {"name":"wortal_analytics_log_level_start","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_level_end","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_level_up","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_score","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_tutorial_start","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_tutorial_end","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_game_choice","path":"extensions/Wortal/Wortal.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-context.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_choose_async","argCount":-1,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_chooseAsync","help":"wortal_context_choose_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_get_id","argCount":0,"args":[],"documentation":"","externalName":"wortalContext_getId","help":"wortal_context_get_id();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_create_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_createAsync","help":"wortal_context_create_async(playerId);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_switch_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_switchAsync","help":"wortal_context_switch_async(contextId);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_share_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_shareAsync","help":"wortal_context_share_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_update_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_updateAsync","help":"wortal_context_update_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_get_type","argCount":0,"args":[],"documentation":"","externalName":"wortalContext_getType","help":"wortal_context_get_type();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_get_players_async","argCount":0,"args":[],"documentation":"","externalName":"wortalContext_getPlayersAsync","help":"wortal_context_get_players_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_share_link_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_shareLinkAsync","help":"wortal_context_share_link_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_is_size_between","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"wortalContext_isSizeBetween","help":"wortal_context_is_size_between(minSize, maxSize);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_invite_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalContext_inviteAsync","help":"wortal_context_invite_async(payload);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[
        {"name":"wortal_context_choose_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_get_id","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_create_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_switch_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_invite_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_share_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_update_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_get_type","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_get_players_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_share_link_async","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_context_is_size_between","path":"extensions/Wortal/Wortal.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-iap.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_get_catalog_async","argCount":0,"args":[],"documentation":"","externalName":"wortalIAP_getCatalogAsync","help":"wortal_iap_get_catalog_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_is_enabled","argCount":0,"args":[],"documentation":"","externalName":"wortalIAP_isEnabled","help":"wortal_iap_is_enabled();","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_get_purchases_async","argCount":0,"args":[],"documentation":"","externalName":"wortalIAP_getPurchasesAsync","help":"wortal_iap_get_purchases_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_make_purchase_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalIAP_makePurchaseAsync","help":"wortal_iap_make_purchase_async(purchaseConfig);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_consume_purchase_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalIAP_consumePurchaseAsync","help":"wortal_iap_consume_purchase_async(purchaseToken);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[
        {"name":"wortal_iap_is_enabled","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_iap_get_catalog_async","path":"extensions/Wortal/Wortal.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-leaderboard.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_leaderboard_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalLeaderboard_getLeaderboardAsync","help":"wortal_leaderboard_get_leaderboard_async(name);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_send_entry_async","argCount":0,"args":[
            1,
            2,
            1,
          ],"documentation":"","externalName":"wortalLeaderboard_sendEntryAsync","help":"wortal_leaderboard_send_entry_async(name, score, details);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_entries_async","argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"","externalName":"wortalLeaderboard_getEntriesAsync","help":"wortal_leaderboard_get_entries_async(name, count, offset);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_player_entry_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalLeaderboard_getPlayerEntryAsync","help":"wortal_leaderboard_get_player_entry_async(name);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_entry_count_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalLeaderboard_getEntryCountAsync","help":"wortal_leaderboard_get_entry_count_async(name);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_connected_players_entries_async","argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"","externalName":"wortalLeaderboard_getConnectedPlayersEntriesAsync","help":"wortal_leaderboard_get_connected_players_entries_async(name, count, offset);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-notifications.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_notifications_schedule_async","argCount":1,"args":[
            1,
          ],"documentation":"","externalName":"wortalNotifications_scheduleAsync","help":"wortal_notifications_schedule_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_notifications_get_history_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalNotifications_getHistoryAsync","help":"wortal_notifications_get_history_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_notifications_cancel_async","argCount":1,"args":[
            1,
          ],"documentation":"","externalName":"wortalNotifications_cancelAsync","help":"wortal_notifications_cancel_async(id);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_notifications_cancel_all_async","argCount":-1,"args":[
            1,
          ],"documentation":"","externalName":"wortalNotifications_cancelAllAsync","help":"wortal_notifications_cancel_all_async(label);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-player.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_id","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_getID","help":"wortal_player_get_id();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_name","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_getName","help":"wortal_player_get_name();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_photo","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_getPhoto","help":"wortal_player_get_photo();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_is_first_play","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_isFirstPlay","help":"wortal_player_is_first_play();","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_data_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalPlayer_getDataAsync","help":"wortal_player_get_data_async(keys);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_set_data_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalPlayer_setDataAsync","help":"wortal_player_set_data_async(data);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_connected_players_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalPlayer_getConnectedPlayersAsync","help":"wortal_player_get_connected_players_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_signed_player_info_async","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_getSignedPlayerInfoAsync","help":"wortal_player_get_signed_player_info_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_flush_data_async","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_flushDataAsync","help":"wortal_player_flush_data_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_asid_async","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_getASIDAsync","help":"wortal_player_get_asid_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_get_signed_asid_async","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_getSignedASIDAsync","help":"wortal_player_get_signed_asid_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_can_subscribe_bot_async","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_canSubscribeBotAsync","help":"wortal_player_can_subscribe_bot_async();","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_player_subscribe_bot_async","argCount":0,"args":[],"documentation":"","externalName":"wortalPlayer_subscribeBotAsync","help":"wortal_player_subscribe_bot_async();","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-session.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_entry_point_data","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getEntryPointData","help":"wortal_session_get_entry_point_data();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_entry_point_async","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getEntryPointAsync","help":"wortal_session_get_entry_point_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_set_session_data","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalSession_setSessionData","help":"wortal_session_set_session_data(data);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_locale","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getLocale","help":"wortal_session_get_locale();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_traffic_source","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getTrafficSource","help":"wortal_session_get_traffic_source();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_platform","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getPlatform","help":"wortal_session_get_platform();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_device","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getDevice","help":"wortal_session_get_device()","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_get_orientation","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_getOrientation","help":"wortal_session_get_orientation();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_on_orientation_change","argCount":0,"args":[],"documentation":"","externalName":"wortalSession_onOrientationChange","help":"wortal_session_on_orientation_change();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_session_switch_game_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalSession_switchGameAsync","help":"wortal_session_switch_game_async(gameID);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal-tournament.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_tournament_get_current_async","argCount":0,"args":[],"documentation":"","externalName":"wortalTournament_getCurrentAsync","help":"wortal_tournament_get_current_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_tournament_get_all_async","argCount":0,"args":[],"documentation":"","externalName":"wortalTournament_getAllAsync","help":"wortal_tournament_get_all_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_tournament_post_score_async","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"wortalTournament_postScoreAsync","help":"wortal_tournament_post_score_async(score);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_tournament_create_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalTournament_createAsync","help":"wortal_tournament_create_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_tournament_share_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalTournament_shareAsync","help":"wortal_tournament_share_async(payload);","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_tournament_join_async","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"wortalTournament_joinAsync","help":"wortal_tournament_join_async(tournamentID);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"wortal.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_perform_haptic_feedback_async","argCount":0,"args":[],"documentation":"","externalName":"wortal_performHapticFeedbackAsync","help":"wortal_perform_haptic_feedback_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_get_supported_apis","argCount":0,"args":[],"documentation":"","externalName":"wortal_getSupportedAPIs","help":"wortal_get_supported_apis();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_is_initialized","argCount":0,"args":[],"documentation":"","externalName":"wortal_isInitialized","help":"wortal_is_initialized();","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_initialize_async","argCount":0,"args":[],"documentation":"","externalName":"wortal_initializeAsync","help":"wortal_initialize_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_start_game_async","argCount":0,"args":[],"documentation":"","externalName":"wortal_startGameAsync","help":"wortal_start_game_async();","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_set_loading_progress","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"wortal_setLoadingProgress","help":"wortal_set_loading_progress(value);","hidden":false,"kind":5,"returnType":1,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}