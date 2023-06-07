local profile = {};
local sets = {
    ['Idle'] = {
        Neck = 'Orochi Nodowa',
        Body = 'Kupo Suit',
        Feet = 'Trotter Boots',
    },
    ['TP'] = {
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Head = 'Walahra Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Dragon Harness',
        Hands = 'Dusk Gloves',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Potent Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Dragon Leggings',
    },
    ['SATA'] = {
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Head = 'Emperor Hairpin',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Dragon Harness',
        Hands = 'Dragon Mittens',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Dragon Leggings',
    },
    ['Steal'] = {
        Neck = 'Rabbit Charm',
        Hands = 'Thief\'s Kote',
    },
    ['Fishing'] = {
        Body = 'Fsh. Tunica',
        Hands = 'Fsh. Gloves',
        Legs = 'Fisherman\'s Hose',
        Feet = 'Fisherman\'s Boots',
    },
    ['MAB'] = {
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Head = 'Emperor Hairpin',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Moldavite Earring',
        Body = 'Dragon Harness',
        Hands = 'Dragon Mittens',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Dragon Leggings',
    },
    ['NIN'] = {
        Head = 'Walahra Turban',
        Hands = 'Dusk Gloves',
        Body = 'Scorpion Harness',
    },
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
		if (player.Status == 'Engaged') then
            if gData.GetBuffCount('Trick Attack') then
                gFunc.EquipSet('SATA');
            elseif gData.GetBuffCount('Sneak Attack') then
                gFunc.EquipSet('SATA');
            else
                gFunc.EquipSet('TP');
            end
		elseif (player.Status == 'Resting') then
			gFunc.EquipSet(sets.Idle);
		else
			gFunc.EquipSet(sets.Idle);
		end
	end
	
end

profile.HandleAbility = function()
	local action = gData.GetAction ();
	-- if action.Name == 'Flee' then	
	-- 	gFunc.EquipSet(sets.Flee);
	-- elseif action.Name == 'Hide' then
	-- 	gFunc.EquipSet(sets.Hide);
	-- elseif action.Name == 'Mug' then
	-- 	gFunc.EquipSet(sets.Mug);
	elseif action.Name == 'Steal' then
		gFunc.EquipSet(sets.Steal);
	end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local action = gData.GetAction ();
	local DEX = T{ 'Evisceration', 'Wasp Sting', 'Viper Bite', 'Mandalic Stab' };
	local MAB = T{ 'Gust Slash', 'Cyclone', 'Aeolian Edge' };
	if (DEX:contains(action.Name)) then
		gFunc.EquipSet(sets.SATA);
	elseif (MAB:contains(action.Name)) then
		gFunc.EquipSet(sets.MAB);
	end
end

return profile;