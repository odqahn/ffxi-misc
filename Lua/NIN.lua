local profile = {};
local sets = {
    ['Idle'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Ninja Tekko',
        Head = 'Optical Hat',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Potent Belt',
    },
    ['Mog'] = {
        Ammo = 'Fuma Shuriken',
        Body = 'Kupo Suit',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Ninja Tekko',
        Neck = 'Orochi Nodowa',
    },
    ['NightIdle'] = {
        Feet = 'Ninja Kyahan',
    },
    ['Damage_Haste'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Swift Belt',
    },
    ['Damage_Acc'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Potent Belt',
    },
    ['Utsu'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Amemet Mantle +1',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = 'Walahra Turban',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Evasion Torque',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Swift Belt',
    },
    ['Jutsu'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Scp. Harness +1',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Ninjutsu Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = 'Ninja Hatsuburi',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Druid\'s Rope',
    },
    ['JutsuEnmity'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Ninjutsu Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = 'Ninja Hatsuburi',
        Legs = 'Yasha Hakama',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Warwolf Belt',
    },
    ['Enmity'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Eris\' Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = 'Yasha Jinpachi',
        Legs = 'Yasha Hakama',
        Neck = 'Harmonia\'s Torque',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Warwolf Belt',
    },
    ['Tanking'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Ocl. Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Yasha Tekko',
        Head = 'Optical Hat',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Swift Belt',
    },
    ['RA'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Koga Chainmail',
        Ear1 = 'Vision Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Dusk Ledelsens',
        Hands = 'Ninja Tekko',
        Head = 'Optical Hat',
        Legs = 'Dusk Trousers',
        Neck = 'Peacock Amulet',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Precise Belt',
    },
    ['WSSTRDEX'] = {
        Ammo = 'Bomb Core',
        Back = 'Commander\'s Cape',
        Body = 'Haubergeon +1',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Dusk Ledelsens',
        Hands = 'Ninja Tekko',
        Head = 'Optical Hat',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Peacock Amulet',
        Ring1 = 'Flame Ring',
        Ring2 = 'Flame Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEX'] = {
        Ammo = 'Bomb Core',
        Back = 'Commander\'s Cape',
        Body = 'Haubergeon +1',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Dusk Ledelsens',
        Hands = 'Ninja Tekko',
        Head = 'Emperor Hairpin',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Peacock Amulet',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEXINT'] = {
        Ammo = 'Bomb Core',
        Back = 'Commander\'s Cape',
        Body = 'Haubergeon +1',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Ninja Tekko',
        Head = 'Yasha Jinpachi',
        Legs = 'Byakko\'s Haidate',
        Neck = 'Peacock Amulet',
        Ring1 = 'Flame Ring',
        Ring2 = 'Flame Ring',
        Waist = 'Warwolf Belt',
    },
    -- TODO when needed...
    ['WSSTRINT'] = {
        Ammo = 'Bomb Core',
        Head = 'Yasha Jinpachi',
        Legs = 'Yasha Hakama',
        Ring1 = 'Flame Ring',
        Ring2 = 'Flame Ring',
    },
    ['Para'] = {
        Waist = 'Flagellant\'s Rope',
    },
    ['Sleep'] = {
        Ammo = 'Goblin Cracker',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
};
profile.Sets = sets;

local Settings = {
    Mog = false;
    Accuracy = false;
};

-- Sleep for lockstyleset
local clock = os.clock;
function Sleep(n)
    local t0 = clock();
    while clock() - t0 <= n do end;
end

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	AshitaCore:GetChatManager():QueueCommand(1, '/echo NIN loading!');
    Sleep(1);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 4 echo');
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if (args[1] == 'mog') then
        if (Settings.Mog == true) then
            Settings.Mog = false;
            gFunc.Message('Mog Set Off');
        else
            Settings.Mog = true;
            gFunc.Message('Mog Set On');
        end
    end
    if (args[1] == 'acc') then
        if (Settings.Accuracy == true) then
            Settings.Accuracy = false;
            gFunc.Message('Accuracy Set Off');
        else
            Settings.Accuracy = true;
            gFunc.Message('Accuracy Set On');
        end
    end
end

profile.HandleDefault = function()
    local yonin = gData.GetBuffCount('Yonin');
    local sleep = gData.GetBuffCount('Sleep');
    local para = gData.GetBuffCount('Paralysis');
    local game = gData.GetEnvironment();

    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
        if (yonin == 1) then
            gFunc.EquipSet(sets.Tanking);
        elseif (Settings.Accuracy == true) then
            gFunc.EquipSet(sets.Damage_Acc);
        else
            gFunc.EquipSet(sets.Damage_Haste);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Idle);
    else
        if (Settings.Mog == true) then
            gFunc.EquipSet(sets.Mog);
            -- Equipe night feet if night
            if (game.Time < 6.00) or (game.Time > 18.00) then
                gFunc.EquipSet(sets.NightIdle);
            end
        else
            gFunc.EquipSet(sets.Idle);
            if (game.Time < 6.00) or (game.Time > 18.00) then
                gFunc.EquipSet(sets.NightIdle);
            end
        end
    end

    -- Add Opo-pop / Flagellant's in case of Sleep / Para
    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    end
    if (para == 1) then
        gFunc.EquipSet(sets.Para);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction ();
    if action.Name == 'Provoke' then
        gFunc.EquipSet(sets.Enmity);
    elseif action.Name == 'Defender' then
        gFunc.EquipSet(sets.Enmity);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local action = gData.GetAction ();
    local yonin = gData.GetBuffCount('Yonin');

    if (action.Skill == 'Ninjutsu') then
        if (string.contains(action.Name, 'Utsusemi:')) then
            gFunc.EquipSet(sets.Utsu);
        elseif (yonin ==1 ) then
            gFunc.EquipSet(sets.JutsuEnmity);
        else
            gFunc.EquipSet(sets.Jutsu);
        end
    end
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction ();

    local STRDEX = T{ 'Blade: Jin', 'Blade: Rin', 'Blade: Retsu', 'Blade: Ten', 'Blade: Ku' };
    local STRINT = T{ 'Blade: Teki', 'Blade: To', 'Blade: Chi', 'Blade: Ei', 'Blade: Kamu' };
    local DEX = T{ 'Blade: Metsu' , 'Blade: Shun'};
    local DEXINT = T{ 'Blade: Yu', 'Blade: Kamu' };
    if (STRDEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSSTRDEX);
    elseif (DEX:contains(action.WSDEX)) then
        gFunc.EquipSet(sets.WSDEX);
    elseif (DEXINT:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEXINT);
    elseif (STRINT:contains(action.Name)) then
        gFunc.EquipSet(sets.WSSTRINT);
    end
end

return profile;