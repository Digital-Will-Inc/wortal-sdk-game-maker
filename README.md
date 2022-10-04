# Wortal SDK for GameMaker

## Installation
1. Install the Wortal extension
2. Call for ads and analytics in the game code
   1. Demo objects in the extension
   2. Example snippets in the How to Use section
3. Build the game for HTML5 platform
4. Modify the final build with required changes for Wortal
5. Create a .zip archive of the game with the index.html at the root
6. Upload build to the Wortal dashboard

### Required changes to the game build
There are some changes that need to be made to the game build before the Wortal SDK integration is complete.

1. Extract the .zip archive that resulted from the GameMaker build
2. Open `index.html` and locate the following line near the bottom:
`<script type="text/javascript" src="html5game/yourgame.js?DBDYB=830673173"></script>`
3. Copy this code snippet
4. Open `html5game/index.html` and locate the following line near the bottom:
`<!-- ADD THE GAME SCRIPT HERE - FAILURE TO DO SO WILL CAUSE THE GAME TO NOT RUN -->`
5. Replace the commented line with the code copied from Step 3
6. Change the `<title>` tag to match your game name
7. Overwrite the `index.html` in the root directory with `html5game/index.html`

If you are using a custom index.html instead of the default template, you can add the following lines to your custom index.html instead of overwriting it with the provided version:

```html
<head>
    <script src="https://html5gameportal.com/embeds/wortal-1.2.0.js"></script>
    <script src="html5game/wortal-init.js"></script>
</head>
<body>
    <div class="loading-cover" id="loading-cover" style="background: #000000; width: 100%;       height: 100%; position: fixed; z-index: 100;"></div>
</body>
```

## How to Use

### Interstitial Ads
Interstitial ads are convenient to show to players at certain milestones throughout your game. Ex: Player finishes a level, player levels up, etc.

`show_interstitial(placementType, description);`

**NOTE**: Placement types passed as the first argument may only be the following:
- next
- start
- pause
- browse

If anything else is passed as an argument the ad will fail to show. See [this document](https://developers.google.com/ad-placement/docs/placement-types) for more details about the different types.

### Rewarded Ads
Rewarded ads can be used to offer the player bonuses or other incentives during the game. These ads are longer and require the player to watch the ad in its entirety to receive the reward, but are optional.

`show_rewarded(description);`

### Ad Callbacks
Various callback events are triggered for different ad events. You should listen for these callbacks and handle them accordingly in the `Async - Social` event.

```javascript
var ID = async_load[? "id"];
if (ID != undefined) {
	if (ID == "wortal_callback")
	{
		switch(async_load[? "event"])
		{
			case "BEFORE_AD":
            // Pause game and audio here.
			break;
			case "AFTER_AD":
            // Resume game and audio here.
			break;
			case "REWARD_SKIP":
			// Do not reward the player - ad was skipped.
			break;
			case "REWARD_PLAYER":
			// Reward player for watching the ad.
			break;
		}
	}
}
```

### Analytics
The analytics API can be used to track in game events to get a better understanding of how players are interacting with the game.

```javascript
// Logs the beginning of a level and starts the level timer.
log_level_start(level);

// Logs the end of a level and records the time played if level matches the last log_level_start call.
log_level_end(level);

// Logs the player's choice when offered different options.
// This can be useful for determining which characters are more popular, or paths are more commonly taken, etc.
// This can be a powerful tool for balancing the game and giving the players more of what they enjoy.
log_game_choice(decision, choice);
```
