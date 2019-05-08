local botcards = { -- Cards used by an AI that are not meant for human play go here.
	
	--Used by the MasterHand AI.
	["MasterHand"] = { 
		["Id"] = 502550783,
		["Name"] = "MasterHand",
		["Health"] = 5000,
		["Power"] = 0,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["WeakenImmune"] = true,
		["SwapImmune"] = true,
		["SetImmune"] = true,
		["CounterAttackBlock"] = true,
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "BossMonster",
			Description = "Can't be counterattacked. This card is immune to cards that lower, swap, or set its Health or Power. When this card is destroyed, its controller loses the game.",
			["Type"] = "OnDeath",
			["Power"] = "Inflict",
			Target = "Self",	
			Increase = 99999,
		},
		["Bio"] = "No gimmicks... Apart from this one.",
	},		
	
	
	--Used by the MahBucket AI.
	
	["Bert"] = { 
		["Id"] = 1151269013,
		["Name"] = "Bert",
		["Health"] = 400,
		["Power"] = 400,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Yellow",
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "BossMonster",
			Description = [[When this card is cast, Set the health and power of all enemy fighters to 200. Summon a Beehive.]],
			["Type"] = "OnSummon",
			["Power"] = {{"SetHealth",200},{"SetPower",200},{"Summon","Beehive","Ally"}},
			Target = "Enemy",	
		},
		["Bio"] = "Always as twice as strong as his opponents.",
	},	
	
	["Timothy"] = { 
		["Id"] = 1151269011,
		["Name"] = "Timothy",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Yellow",
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "BossMonster",
			Description = [[When this card is cast, lower the health and power of all enemy fighters by 200. Summon a Beehive.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Weaken",200},{"Damage",200},{"Summon","Beehive","Ally"}},
			Target = "Enemy",	
		},
		["Bio"] = "He certainly is!",
	},	
	
	--Used by the Matriarch AI.	
	
	["Crow of Eternal Torment"] = { 
		["Id"] = 1469009998,
		["Name"] = "Crow of Eternal Torment",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Yellow",
		["Cost"] = {["Neutral"] = 0,},
		["Archetype"] = "Bird",
		["Charge"] = true,
		["Effect"] = {
			Name = "Matriarch",
			Description = [[Haste. When this card is cast, draw a card.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Draw",1}},
			Target = "Ally",	
		},
		["Bio"] = "The Matriarch's favourite bird. Well rounded, versatile, and good on the front lines.",
	},	
	
	["Bird of Eternal Paradise"] = { 
		["Id"] = 1469010000,
		["Name"] = "Bird of Eternal Paradise",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Green",
		["Cost"] = {["Neutral"] = 0,},
		["Archetype"] = "Bird",
		["WeakenImmune"] = true,
		["Effect"] = {
			Name = "Matriarch",
			Description = [[Immune to effects that lower health or power. When this card is cast, increase the health of all birds by 100. Draw a card.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Heal",100,"Archetype"},{"Draw",1}},
			Target = "Ally",	
		},
		["Bio"] = "The Matriarch searched far and wide, to all corners of Robloxia to find her most exotic allies.",
	},	
	
	["Parrot of Eternal Dominion"] = { 
		["Id"] = 1469082737,
		["Name"] = "Parrot of Eternal Dominion",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Red",
		["Cost"] = {["Neutral"] = 0,},
		["Archetype"] = "Bird",
		["CounterAttackBlock"] = true,
		["Effect"] = {
			Name = "Matriarch",
			Description = [[Can't be counterattacked. When this card is cast, increase the power of all birds by 100. Draw a card.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Strengthen",100,"Archetype"},{"Draw",1}},
			Target = "Ally",	
		},
		["Bio"] = "The best birds are those with birds of their own.",
	},
	
	["Eternal Tweety"] = { 
		["Id"] = 1469068943,
		["Name"] = "Eternal Tweety",
		["Health"] = 225,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Blue",
		["Cost"] = {["Neutral"] = 0,},
		["Archetype"] = "Bird",
		["Effect"] = {
			Name = "Matriarch",
			Description = [[When this card is cast, ready all Birds.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Unlock",1}},
			Target = "Archetype",	
		},
		["Bio"] = "Does The Matriarch control Tweety, or does Tweety control The Matriarch?",
	},	
	
	["Bird Colossus"] = { 
		["Id"] = 1469010033,
		["Name"] = "Bird Colossus",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 0,},
		["Requirement"] = {"Archetype",8},
		["Archetype"] = "Bird",
		["Effect"] = {
			Name = "Matriarch",
			Description = [[Cast only if you control 8 or more Birds. Combine them into the Bird Colossus.]],
			["Type"] = "OnSummon",
			["Power"] = {{"SetHealth",0,"Archetype"},{"Summon","Bird Colossus 2"}},
			Target = "Ally",	
		},
		["Bio"] = "Does The Matriarch control Tweety, or does Tweety control The Matriarch?",
	},		
	
	["Bird Colossus 2"] = { 
		["Id"] = 1469010033,
		["Name"] = "Bird Colossus",
		["Health"] = 3000,
		["Power"] = 3000,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 0,},
		["Requirement"] = {"Archetype",8},
		["Archetype"] = "Bird",
		["SetImmune"] = true,
		["WeakenImmune"] = true,
		["CounterBlock"] = true,
		["CounterAttackBlock"] = true,
		["Effect"] = {
			Name = "Matriarch",
			Description = [[Immune to effects that reduce or set health or power. Can't counterattack or be counterattacked. At the end of your turns, deal 400 damage to the opponent and fill your board with birds.]],
			["Type"] = "OnEnd",
			["Power"] = {{"Inflict",400,"Opponent"},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}},{"RandomSummon", {"Crow of Eternal Torment","Bird of Eternal Paradise","Parrot of Eternal Dominion","Eternal Tweety"}}},
			Target = "Ally",	
		},
		["Bio"] = "We know who is in charge now.",
	},			
		
	["Blacken the Skies"] = { 
		["Id"] = 1469009996,
		["Name"] = "Blacken the Skies",
		["AltCards"] = {
			["Darken the Skies"] = {
				["Id"] =  2234690805,
				["Cost"] = {["Blue"] = 20,},
				["Rarity"] = "Epic",
				["Effect"] = {
					Name = "birds and bees",
					Description = [[Shuffle a copy of the Matriarch's deck into your deck.]],
					["Type"] = "OnSummon",
					["Power"] = {{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Bird Colossus"},{"DeckAdd","Divine Favor"},{"DeckAdd","Divine Favor"}},
					Target = "Ally",	
				},
				["Bio"] = "Now you can tap into the Matriarch's power!",
			},
		},		
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 0,},
		["Effect"] = {
			Name = "Matriarch",
			Description = [[Shuffle a copy of the Matriarch's deck into your deck, and draw five cards.]],
			["Type"] = "OnSummon",
			["Power"] = {{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Crow of Eternal Torment"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Bird of Eternal Paradise"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Parrot of Eternal Dominion"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Eternal Tweety"},{"DeckAdd","Bird Colossus"},{"DeckAdd","Divine Favor"},{"DeckAdd","Divine Favor"},{"DeckAdd","Blacken the Skies"},{"Draw",5}},
			Target = "Ally",	
		},
		["Bio"] = "How can you kill someone with a duststorm if they simply fly away?",
	},	

	--This card is used by The Scholar.
	
	["Fatal Discovery"] = { 
		["Id"] = 1480499313,
		["Name"] = "Fatal Discovery",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Red",
		["Cost"] = {["Neutral"] = 0,},
		["Effect"] = {
			Name = "Scholar",
			Description = [[You win the game.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Inflict",9999,"Opponent"}},
			Target = "Ally",	
		},
		["Bio"] = "At last, The Scholar found what he was looking for.",
	},
	
	--This card is used by The Merchant.	
	
	["Master Acolyte's Altar"] = {
		["Id"] = 1480565605,
		["Name"] = "Master Acolyte's Altar",
		["Health"] = 1100,
		["Power"] = 0,
		["Rarity"] = "Token",
		["AttackEffect"] = "Thunder",
		["Archetype"] = "Acolyte",
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 4,},
		["Effect"] = {
			Name = "Acolyte",
			Description = "Generate an icon of every colour at the end of your turns. (White is not a colour.)",
			["Type"] = "OnEnd",
			["Power"] = {{"Blue",1},{"Red",1},{"Green",1},{"Yellow",1}},
			Target = "Ally",
		},
		["Bio"] = "Tfw the devs can't make AI play well so they have to make OP cards and cheat their way to victory.",
	},
	
	--This card is used by Drager.
	
	["Drager's Disgust"] = {
		["Id"] = 362314946,
		["Name"] = "PEEPSTERS",
		["Health"] = 250,
		["Power"] = 250,
		["Rarity"] = "Token",
		["AttackEffect"] = "Lightning",
		["Archetype"] = "Doge",
		["Color"] = "Yellow",
		["Cost"] = {["Yellow"] = 1,},
		["Effect"] = {
			Name = "I quit.",
			Description = "Put a random Doge into your hand, and shuffle a copy of this card into your deck.",
			["Type"] = "OnSummon",
			["Power"] = {{"RandomAdd","Doge"},{"DeckAdd","Drager's Disgust"}},
			Target = "Ally",
		},
		["Bio"] = "I wonder if Drager ever realized he could just have nerfed this himself so he wouldn't have to get an aneurysm and quit.",
	},
	

}

return botcards
