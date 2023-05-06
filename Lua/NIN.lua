local profile = {};
local sets = {
    ['Idle'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Ninja Kyahan',
        Hands = 'Ninja Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Koga Sarashi',
    },
    ['Parade'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Boxer\'s Mantle',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Ninja Kyahan',
        Hands = 'Ninja Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Koga Sarashi',
    },
    ['Mog'] = {
        Ammo = 'Fuma Shuriken',
        Body = 'Kupo Suit',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Ninja Kyahan',
        Hands = 'Ninja Tekko',
        Neck = 'Orochi Nodowa',
    },
    ['Damage_Haste'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Koga Sarashi',
    },
    ['Damage_Acc'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Potent Belt',
    },
    ['Damage_Night'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Koga Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Koga Sarashi',
    },
    ['Damage_Night_Acc'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Koga Tekko',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Potent Belt',
    },
    ['Tanking'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Boxer\'s Mantle',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Yasha Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Koga Sarashi',
    },
    ['NightTanking'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Boxer\'s Mantle',
        Body = 'Koga Chainmail',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Toga Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = 'Koga Hakam',
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Koga Sarashi',
    },
    ['EnmityJA'] = {
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
    ['EnmityMA'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = 'Yasha Jinpachi',
        Legs = 'Yasha Hakama',
        Neck = 'Harmonia\'s Torque',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Warwolf Belt',
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
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Behemoth Ring',
        Waist = 'Precise Belt',
    },
    ['WSSTRDEX'] = {
        Ammo = 'Bomb Core',
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Feet = 'Koga Kyahan',
        Hands = 'Ninja Tekko',
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Fotia Gorget',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEX'] = {
        Ammo = 'Bomb Core',
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Feet = 'Koga Kyahan',
        Hands = 'Ninja Tekko',
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Fotia Gorget',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEXINT'] = {
        Ammo = 'Bomb Core',
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Koga Kyahan',
        Hands = 'Ninja Tekko',
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Fotia Gorget',
        Ring1 = 'Snow Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSSTRINT'] = {
        Ammo = 'Bomb Core',
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Feet = 'Koga Kyahan',
        Hands = 'Ninja Tekko',
        Head = 'Maat\'s Cap',
        Legs = 'Yasha Hakama',
        Neck = 'Fotia Gorget',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['CHR'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Corse Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Ninja Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Corsette',
    },
    ['Sleep'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Ninja Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Koga Sarashi',
    },
    ['Utsu'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Corse Cape',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Evasion Torque',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Koga Sarashi',
    },
    ['Jutsu'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Ninjutsu Earring',
        Feet = 'Koga Kyahan',
        Hands = 'Yasha Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Koga Sarashi',
    },
    ['JutsuElementEnmity'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Eris\' Earring',
        Feet = 'Koga Kyahan',
        Hands = 'Yasha Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = 'Yasha Hakama',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Warwolf Belt',
    },
    ['JutsuDebuffEnmity'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Ninjutsu Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = 'Yasha Tekko',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+2', [2] = 'Haste+4' } },
        Legs = 'Yasha Hakama',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Koga Sarashi',
    },
};
profile.Sets = sets;

local Settings = {
    Parade = false,
    Mog = false,
    Accuracy = false,
    TH = false,
};

-- Sleep for lockstyleset
local clock = os.clock;
function Sleep(n)
    local t0 = clock();
    while clock() - t0 <= n do
    end
    ;
end

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo NIN loading!');
    Sleep(1);
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 5 echo');
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
    if (args[1] == 'parade') then
        if (Settings.Parade == true) then
            Settings.Parade = false;
            gFunc.Message('Parade Set Off');
        else
            Settings.Accuracy = true;
            gFunc.Message('Parade Set On');
        end
    end
    if (args[1] == 'th') then
        if (Settings.TH == true) then
            Settings.TH = false;
            gFunc.Message('TH Set Off');
        else
            Settings.TH = true;
            gFunc.Message('TH Set On');
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
        if (sleep == 1) then
            gFunc.EquipSet(sets.Sleep);
        elseif (yonin == 1) then
            -- Equipe night tanking gear
            if (game.Time < 6.00) or (game.Time > 18.00) then
                gFunc.EquipSet(sets.NightTanking);
            else
                gFunc.EquipSet(sets.Tanking);
            end
        elseif (Settings.Accuracy == true) then
            -- Equipe night hands if night
            if (game.Time < 6.00) or (game.Time > 18.00) then
                gFunc.EquipSet(sets.Damage_Night_acc);
            else
                gFunc.EquipSet(sets.Damage_Acc);
            end
        else
            -- Equipe night hands if night
            if (game.Time < 6.00) or (game.Time > 18.00) then
                gFunc.EquipSet(sets.Damage_Night);
            else
                gFunc.EquipSet(sets.Damage_Haste);
            end
        end
        -- Equip TH set during battle
        if (Settings.TH == true) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end

    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Idle);
    else
        if (Settings.Mog == true) then
            gFunc.EquipSet(sets.Mog);
        elseif (Settings.Parade == true) then
            gFunc.EquipSet(sets.Parade);
        else
            gFunc.EquipSet(sets.Idle);
        end
    end

    -- Flagellant's in case of para
    if (para == 1) then
        gFunc.Equip('Waist', 'Flagellant\'s Rope');
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Provoke') then
        gFunc.EquipSet(sets.EnmityJA);
    elseif (string.contains(action.Name, 'Waltz')) then
        gFunc.EquipSet(sets.CHR);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local action = gData.GetAction();
    local yonin = gData.GetBuffCount('Yonin');

    if (action.Skill == 'Ninjutsu') then
        if (string.contains(action.Name, 'Utsusemi:')) then
            gFunc.EquipSet(sets.Utsu);
        elseif (yonin == 1) then
            if (string.contains(action.Name, 'Dokumori:')) or (string.contains(action.Name, 'Jubaku:')) or (string.contains(action.Name, 'Hojo:')) then
                gFunc.EquipSet(sets.JutsuDebuffEnmity);
            else
                gFunc.EquipSet(sets.JutsuElementEnmity);
            end
        else
            gFunc.EquipSet(sets.Jutsu);
        end
    elseif (string.contains(action.Name, 'Sleep')) or (string.contains(action.Name, 'Stun')) or (string.contains(action.Name, 'Drain')) or (string.contains(action.Name, 'Aspir')) then
        gFunc.EquipSet(sets.EnmityMA);
    end
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleMidshot = function()
    -- gFunc.EquipSet(sets.RA);
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();

    local STRDEX = T { 'Blade: Jin', 'Blade: Rin', 'Blade: Retsu', 'Blade: Ten', 'Blade: Ku' };
    local STRINT = T { 'Blade: Teki', 'Blade: To', 'Blade: Chi', 'Blade: Ei', 'Blade: Kamu' };
    local DEX = T { 'Blade: Metsu', 'Blade: Shun' };
    local DEXINT = T { 'Blade: Yu' };
    if (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEX);
    elseif (STRDEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSSTRDEX);
    elseif (DEXINT:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEXINT);
    elseif (STRINT:contains(action.Name)) then
        gFunc.EquipSet(sets.WSSTRINT);
    end
end

return profile;
