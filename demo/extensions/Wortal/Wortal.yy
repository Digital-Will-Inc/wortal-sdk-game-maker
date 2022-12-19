{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "Wortal",
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "2.0.0",
  "packageId": "",
  "productId": "",
  "author": "Digital Will",
  "date": "2022-09-27T09:56:42.1953214+09:00",
  "license": "",
  "description": "Wortal SDK for GameMaker",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-ads.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_ads_show_interstitial","externalName":"wortalAds_showInterstitial","kind":5,"help":"wortal_ads_show_interstitial(placementType, description);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_ads_show_rewarded","externalName":"wortalAds_showInterstitial","kind":5,"help":"wortal_ads_show_rewarded(description);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-analytics.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_level_start","externalName":"wortalAnalytics_logLevelStart","kind":5,"help":"wortal_analytics_log_level_start(level);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_level_end","externalName":"wortalAnalytics_logLevelEnd","kind":5,"help":"wortal_analytics_log_level_end(level, score, wasCompleted);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_level_up","externalName":"wortalAnalytics_logLevelUp","kind":5,"help":"wortal_analytics_log_level_up(level);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_score","externalName":"wortalAnalytics_logScore","kind":5,"help":"wortal_analytics_log_score(score);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_game_choice","externalName":"wortalAnalytics_logGameChoice","kind":5,"help":"wortal_analytics_log_game_choice(decision, choice);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_tutorial_start","externalName":"wortalAnalytics_logTutorialStart","kind":5,"help":"wortal_analytics_log_tutorial_start(tutorial);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_analytics_log_tutorial_end","externalName":"wortalAnalytics_logTutorialEnd","kind":5,"help":"wortal_analytics_log_tutorial_end(tutorial, wasCompleted);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[
        {"name":"wortal_analytics_log_level_start","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_level_end","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_level_up","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_score","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_tutorial_start","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_tutorial_end","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_analytics_log_game_choice","path":"extensions/Wortal/Wortal.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-context.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_choose_async","externalName":"wortalContext_chooseAsync","kind":5,"help":"wortal_context_choose_async(payload);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_get_id","externalName":"wortalContext_getId","kind":5,"help":"wortal_context_get_id();","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_create_async","externalName":"wortalContext_createAsync","kind":5,"help":"wortal_context_create_async(playerId);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_switch_async","externalName":"wortalContext_switchAsync","kind":5,"help":"wortal_context_switch_async(contextId);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_share_async","externalName":"wortalContext_shareAsync","kind":5,"help":"wortal_context_share_async(payload);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_context_update_async","externalName":"wortalContext_updateAsync","kind":5,"help":"wortal_context_update_async(payload);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-iap.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_get_catalog_async","externalName":"wortalIAP_getCatalogAsync","kind":5,"help":"wortal_iap_get_catalog_async();","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_is_enabled","externalName":"wortalIAP_isEnabled","kind":5,"help":"wortal_iap_is_enabled();","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_get_purchases_async","externalName":"wortalIAP_getPurchasesAsync","kind":5,"help":"wortal_iap_get_purchases_async();","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_make_purchase_async","externalName":"wortalIAP_makePurchaseAsync","kind":5,"help":"wortal_iap_make_purchase_async(purchaseConfig);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_iap_consume_purchase_async","externalName":"wortalIAP_consumePurchaseAsync","kind":5,"help":"wortal_iap_consume_purchase_async(purchaseToken);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[
        {"name":"wortal_iap_is_enabled","path":"extensions/Wortal/Wortal.yy",},
        {"name":"wortal_iap_get_catalog_async","path":"extensions/Wortal/Wortal.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-leaderboard.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_leaderboard_async","externalName":"wortalLeaderboard_getLeaderboardAsync","kind":5,"help":"wortal_leaderboard_get_leaderboard_async(name);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_send_entry_async","externalName":"wortalLeaderboard_sendEntryAsync","kind":5,"help":"wortal_leaderboard_send_entry_async(name, score, details);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_entries_async","externalName":"wortalLeaderboard_getEntriesAsync","kind":5,"help":"wortal_leaderboard_get_entries_async(name, count, offset);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_player_entry_async","externalName":"wortalLeaderboard_getPlayerEntryAsync","kind":5,"help":"wortal_leaderboard_get_player_entry_async(name);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_entry_count_async","externalName":"wortalLeaderboard_getEntryCountAsync","kind":5,"help":"wortal_leaderboard_get_entry_count_async(name);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"wortal_leaderboard_get_connected_players_entries_async","externalName":"wortalLeaderboard_getConnectedPlayersEntriesAsync","kind":5,"help":"wortal_leaderboard_get_connected_players_entries_async(name, count, offset);","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-player.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"wortal-session.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
  ],
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 32,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
}