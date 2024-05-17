# Wortal SDK for GameMaker

## Installation
- Install the Wortal extension from the [GameMaker Marketplace](https://marketplace.yoyogames.com/assets/11217/wortal)
- Navigate to `Included Files` -> `wortal_index.html` and replace the JS file path with your game's.
   - Extract the `.zip` archive that results from the GameMaker build.
   - Open `index.html` and locate the following line near the bottom:

   `<script type="text/javascript" src="html5game/yourgame.js?DBDYB=830673173"></script>`

   - Copy this line and save it somewhere.
   - Open `wortal_index.html` and locate the following line near the bottom:

   `<!-- CHANGE THIS TO YOUR GAME's PATH -->`

   - Replace the line below it with the code copied from Step 3.
- Navigate to `Game Options` -> `HTML5` -> `Advanced` -> `Included file as index.html` and change this option to `wortal_index.html`.

## How to Use

### Ads

[API Reference](https://docs.games-api.ai/api/ads/)

Interstitial ads can be shown at various points in the game such as a level end, restart or a timed
interval in games with longer levels.

```javascript
// Player reached the next level.
wortal_ads_show_interstitial("next", "NextLevel");

// Player paused the game.
wortal_ads_show_interstitial("pause", "PausedGame");

// Player opened the IAP shop.
wortal_ads_show_interstitial("browse", "BrowseShop");
```

Rewarded ads can be shown too. These are longer, optional ads that the player can earn a reward for watching. The player
must be notified of the ad and give permission to show before it can be shown.

```javascript
// This example shows the game flow independent of the outcome of the ad.
wortal_ads_show_rewarded("BonusCoins");

// This example shows the game flow depending on the outcome of the ad.
wortal_ads_show_rewarded("ReviveAndContinue");
```

**NOTE**: Players should only be rewarded in the `adViewed` callback.

### Analytics

[API Reference](https://docs.games-api.ai/api/analytics/)

The Analytics API can be used to track game events that can help better understand how players are interacting with
the game. This data will be available for viewing in the Wortal dashboard.

```javascript
// Logs the start of the level.
wortal_analytics_log_level_start("Level 3");

// Logs the end of the level. Will track the time spent playing the level if the name matches
// the name of the last logLevelStart() call.
wortal_analytics_log_level_end("Level 3", "100", 1);

// Logs a choice the player made in the game. This can be useful for balancing the game
// and seeing what content your players interact with the most.
wortal_analytics_log_game_choice("Character", "Blue");
```

### Achievements

[API Reference](https://docs.games-api.ai/api/achievements/)

The Achievements API is used to track the player's progress in the game. Achievements can be unlocked by completing specific tasks or reaching certain milestones.

```javascript
// Unlock an achievement
wortal_achievements_unlock_async("achievementID");

// Get a user's achievement progress
wortal_achievements_get_async();
```

### Context

[API Reference](https://docs.games-api.ai/api/context/)

The Context API is used to connect players and allow them to interact in the game session, share their content
and send messages to each other.

```javascript
// Invite a friend to play the game.
payload = {
    image: "data:base64image",
    text: "Invite text",
    cta: "Play",
    data: { exampleData: "yourData" },
}

wortal_context_invite_async(json_stringify(payload));

// Share your game activity with friends.
payload = {
    image: "data:base64image",
    text: "Share text",
    cta: "Play",
    data: { exampleData: "yourData" },
}

wortal_context_share_async(json_stringify(payload));
```

### In-App Purchases

[API Reference](https://docs.games-api.ai/api/iap/)

The In-App Purchases (IAP) API is used to provide an interface for in-game transactions on the platforms.
This process will differ based on what platform the game is being played on, but the API remains the same.

```javascript
// Get the catalog of products the player can purchase.
wortal_iap_get_catalog_async();

// Purchase a product.
purchaseConfig = {
    productID: "my_product_123",
}

wortal_iap_make_purchase_async(json_stringify(purchaseConfig));
```

### Leaderboards

[API Reference](https://docs.games-api.ai/api/leaderboard/)

The Leaderboard API gives the game access to the platform's leaderboard functionality. This is where
you can track player's scores and compare them to other players.

```javascript
// Get the top 10 entries on the global leaderboard.
wortal_leaderboard_get_entries_async("global", 10, 0);

// Add the player's score to the leaderboard.
wortal_leaderboard_send_entry_async("global", 100, "details");
```

### Notifications

[API Reference](https://docs.games-api.ai/api/notifications/)

The Notifications API is used to send notifications to the player. These can be used to notify the player
of an event in the game or to remind them to come back and play.

```typescript
// Schedule a notification to send to the player.
payload = {
    title: "Your energy is full!",
    body: "Come back and play again.",
    mediaURL: "https://example.com/image.png",
    label: "resources-full",
    scheduleInterval: 300 // 5 minutes
}

wortal_notifications_schedule_async(json_stringify(payload));

// Cancel a scheduled notification.
wortal_notifications_cancel_async("notification-id-123");
```

### Player

[API Reference](https://docs.games-api.ai/api/player/)

You can find details about the current player via the Player API.

```javascript
// Get the player's name.
wortal_player_get_name();

// Get a list of the player's friends who have also played this game.
payload = {
    filter: "ALL",
    size: 20,
    hoursSinceInvitation: 4,
}

wortal_player_get_connected_players_async(json_stringify(payload));
```

### Session

[API Reference](https://docs.games-api.ai/api/session/)

Details about the current session can be accessed in the Session API.

```javascript
// Get the entry point of where the game started from.
wortal_session_get_entry_point_async();
```

### Stats

[API Reference](https://docs.games-api.ai/api/stats/)

The Stats API is used to track player statistics in the game.

```javascript
// Post a player's stats.
wortal_stats_post_async("level 1", 100);

// Get a player's stats for a level.
wortal_stats_get_async("level 1");
```

### Tournament

[API Reference](https://docs.games-api.ai/api/tournament/)

The Tournament API is used to create and manage tournaments for your game.

```javascript
// Create a tournament.
const payload = {
    initialScore: 100,
    config: {
        title: "Level 1 Tournament",
    },
    data: {
        level: 1,
    },
};

wortal_tournament_create_async(json_stringify(payload));

// Post a score to a tournament.
wortal_tournament_post_score_async(200);
```

### Wortal Callbacks
The SDK uses many asynchronous calls that have callback events attached to them. These functions are marked with the `_async` suffix.
You should listen for these callbacks and handle them accordingly in the `Async - Social` event.
The callback events are returned as a map with the following SDK-defined properties:

```javascript
id: "wortal_callback", // Always the same for all Wortal callbacks.
event, // Name of the callback event.
success, // Error flag. 0 means there was an error, 1 means the call was successful.
payload, // Optional return data. Only exists if no error occurred. Type varies based on the caller.
error, // JSON string containing the error, if one occurred.
```

Example handler for ad callbacks:

```javascript
var ID = async_load[? "id"];
if (ID != undefined) {
    if (ID == "wortal_callback") {
        switch (async_load[? "event"]) {
            case "ADS_BEFORE_AD_CALLBACK":
                // Pause game and audio here.
                break;
            case "ADS_AFTER_AD_CALLBACK":
                // Resume game and audio here.
                break;
            case "ADS_AD_DISMISSED_CALLBACK":
                // Do not reward the player - ad was skipped.
                break;
            case "ADS_AD_VIEWED_CALLBACK":
                // Reward player for watching the ad.
                break;
        }
    }
}
```

List of all callback events and their payloads:

```javascript
INITIALIZE_CALLBACK // Void
START_GAME_CALLBACK // Void
ON_PAUSE_CALLBACK // Void
PERFORM_HAPTIC_FEEDBACK_CALLBACK // Void
ADS_BEFORE_AD_CALLBACK // Void
ADS_AFTER_AD_CALLBACK // Void
ADS_AD_DISMISSED_CALLBACK // Void
ADS_AD_VIEWED_CALLBACK // Void
ADS_NO_FILL_CALLBACK // Void
CONTEXT_CHOOSE_CALLBACK // Void
CONTEXT_CREATE_CALLBACK // Void
CONTEXT_SWITCH_CALLBACK // Void
CONTEXT_INVITE_CALLBACK // Void
CONTEXT_SHARE_CALLBACK // Number
CONTEXT_SHARE_LINK_CALLBACK // Void
CONTEXT_UPDATE_CALLBACK // Void
IAP_GET_CATALOG_CALLBACK // Product[]
IAP_GET_PURCHASES_CALLBACK // Purchase[]
IAP_MAKE_PURCHASE_CALLBACK // Purchase
IAP_CONSUME_PURCHASE_CALLBACK // Void
LEADERBOARD_GET_LEADERBOARD_CALLBACK // Leaderboard
LEADERBOARD_SEND_ENTRY_CALLBACK // LeaderboardEntry
LEADERBOARD_GET_ENTRIES_CALLBACK // LeaderboardEntry[]
LEADERBOARD_GET_PLAYER_ENTRY_CALLBACK // LeaderboardEntry
LEADERBOARD_GET_ENTRY_COUNT_CALLBACK // Number
LEADERBOARD_GET_CONNECTED_PLAYERS_ENTRIES_CALLBACK // LeaderboardEntry[]
NOTIFICATIONS_SCHEDULE_CALLBACK // NotificationScheduleResult
NOTIFICATIONS_GET_HISTORY_CALLBACK // ScheduledNotification[]
NOTIFICATIONS_CANCEL_CALLBACK // Boolean
NOTIFICATIONS_CANCEL_ALL_CALLBACK // Boolean
PLAYER_GET_DATA_CALLBACK // Developer-defined object
PLAYER_SET_DATA_CALLBACK // Void
PLAYER_GET_CONNECTED_PLAYERS_CALLBACK // Player[]
PLAYER_GET_SIGNED_PLAYER_INFO_CALLBACK // Object with id and signature
PLAYER_GET_ASID_CALLBACK // String
PLAYER_GET_SIGNED_ASID_CALLBACK // Object with id and signature
PLAYER_CAN_SUBSCRIBE_BOT_CALLBACK // Boolean
PLAYER_SUBSCRIBE_BOT_CALLBACK // Void
SESSION_GET_ENTRY_POINT_CALLBACK // String
SESSION_ON_ORIENTATION_CHANGE_CALLBACK // Orientation
SESSION_SWITCH_GAME_CALLBACK // Void
TOURNAMENT_GET_CURRENT_CALLBACK // Tournament
TOURNAMENT_GET_ALL_CALLBACK // Tournament[]
TOURNAMENT_POST_SCORE_CALLBACK // Void
TOURNAMENT_CREATE_CALLBACK // Tournament
TOURNAMENT_SHARE_CALLBACK // Void
TOURNAMENT_JOIN_CALLBACK // Void
```

### Demo Project

You can find a demo package that has examples of how to implement calls to the SDK [here](https://github.com/Digital-Will-Inc/wortal-sdk-game-maker/blob/master/demo/jp.co.digitalwill.wortal.demo.yymps).
