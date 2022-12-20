// Data can be defined as any object.
data = {
	items: 
	{ 
		coins: 100, 
		boosters: 2 
	},
	lives: 3,
}

// Data needs to be stringified JSON.
wortal_player_set_data_async(json_stringify(data));