local profile = {};
local sets = {
    ['Idle'] = {
        Back = 'Birdman Cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Singing Earring',
        Ear2 = 'Wind Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Head = 'Bard\'s Roundlet',
        Legs = 'Sha\'ir Seraweels',
        Neck = 'Piper\'s Torque',
        Range = 'Hamelin Flute',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['Mog'] = {
        Body = 'Kupo Suit',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'Orochi Nodowa',
        Range = 'Hamelin Flute',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['SingingPrecast'] = {
        Back = 'Veela Cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Singing Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Head = 'Bard\'s Roundlet',
        Legs = 'Sha\'ir Seraweels',
        Waist = 'Gleeman\'s Belt',
    },
    ['Minuet'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Hands = 'Sha\'ir Gages',
        Neck = 'Piper\'s Torque',
        Range = 'Cornette +2',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Mazurka'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Hands = 'Sha\'ir Gages',
        Neck = 'Piper\'s Torque',
        Range = 'Harlequin\'s Horn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Threnody'] = {
        Back = 'Birdman Cape',
        Ear2 = 'String Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'String Torque',
        Range = 'Sorrowful Harp',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
    },
    ['Paeon'] = {
        Back = 'Birdman Cape',
        Ear2 = 'String Earring',
        Neck = 'String Torque',
        Hands = 'Sha\'ir Gages',
        Range = 'Ebony Harp +2',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
    },
    ['March'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Neck = 'Piper\'s Torque',
        Hands = 'Sha\'ir Gages',
        Range = 'Faerie Piccolo',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Finale'] = {
        Back = 'Birdman Cape',
        Ear2 = 'String Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'String Torque',
        Range = 'Military Harp',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
    },
    ['Madrigal'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Neck = 'Piper\'s Torque',
        Hands = 'Sha\'ir Gages',
        Range = 'Traversiere +2',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Ballad'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Neck = 'Piper\'s Torque',
        Hands = 'Sha\'ir Gages',
        Range = 'Traversiere +2',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Elegy'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'Piper\'s Torque',
        Range = 'Horn +1',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Lullaby'] = {
        Back = 'Birdman Cape',
        Ear2 = 'String Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'String Torque',
        Range = 'Nursemaid\'s Harp',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
    },
    ['Hymnus'] = {
        Back = 'Birdman Cape',
        Ear2 = 'String Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'String Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
    },
    ['Requiem'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'Piper\'s Torque',
        Range = 'Requiem Flute',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Carol'] = {
        Back = 'Birdman Cape',
        Ear2 = 'Wind Earring',
        Hands = 'Bricta\'s Cuffs',
        Neck = 'Piper\'s Torque',
        Range = 'Crumhorn +2',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Casting'] = {
        Back = 'Veela Cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Head = 'Walahra Turban',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+1',[2] = 'Crit. hit damage +2%' } },
        Range = 'Hamelin Flute',
        Waist = 'Tarutaru Sash',
    },
    ['NIN'] = {
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+1',[2] = 'Crit. hit damage +2%' } },
        Neck = 'Evasion Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Tarutaru Sash',
    },
    ['Fighting'] = {
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4',[2] = '"Dbl.Atk."+3',[3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+1',[2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Range = 'Oliphant',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Swift Belt',
    },
    ['STR'] = {
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4',[2] = '"Dbl.Atk."+3',[3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Alkyoneus\'s Brc.',
        Head = 'Optical Hat',
        Legs = 'Dusk Trousers',
        Neck = 'Peacock Amulet',
        Range = 'Frenzy fife',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['DEX'] = {
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4',[2] = '"Dbl.Atk."+3',[3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+1',[2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Range = 'Ebony Harp +2',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['MAB'] = {
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4',[2] = '"Dbl.Atk."+3',[3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Moldavite Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+1',[2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Range = 'Ebony Harp +2',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['Sleep'] = {
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
        Range = 'Hamelin Flute',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['Para'] = {
        Waist = 'Flagellant\'s Rope',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
};

-- Sleep for lockstyleset
local clock = os.clock;
function Sleep(n)
    local t0 = clock();
    while clock() - t0 <= n do
    end
    ;
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo BRD loading!');
    Sleep(1);
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 2 echo');
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
end

profile.HandleDefault = function()
    local sleep = gData.GetBuffCount('Sleep');
    local para = gData.GetBuffCount('Paralysis');

    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Fighting);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Idle);
    else
        if (Settings.Mog == true) then
            gFunc.EquipSet(sets.Mog);
        else
            gFunc.EquipSet(sets.Idle);
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
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    if (spell.Skill == 'Singing') then
        gFunc.EquipSet(sets.Singing);
    elseif (spell.Skill == 'Healing Magic') or (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Casting);
    elseif (spell.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.NIN);
    end
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    if (spell.Skill == 'Singing') then
        if (string.contains(spell.Name, 'Paeon')) then
            gFunc.EquipSet(sets.Paeon);
        elseif (string.contains(spell.Name, 'March')) then
            gFunc.EquipSet(sets.March);
        elseif (string.contains(spell.Name, 'Madrigal')) then
            gFunc.EquipSet(sets.Madrigal);
        elseif (string.contains(spell.Name, 'Minuet')) then
            gFunc.EquipSet(sets.Minuet);
        elseif (string.contains(spell.Name, 'Mazurka')) then
            gFunc.EquipSet(sets.Mazurka);
        elseif (string.contains(spell.Name, 'Threnody')) then
            gFunc.EquipSet(sets.Threnody);
        elseif (string.contains(spell.Name, 'Finale')) then
            gFunc.EquipSet(sets.Finale);
        elseif (string.contains(spell.Name, 'Elegy')) then
            gFunc.EquipSet(sets.Elegy);
        elseif (string.contains(spell.Name, 'Ballad')) then
            gFunc.EquipSet(sets.Hymnus);
        elseif (string.contains(spell.Name, 'Lullaby')) then
            gFunc.EquipSet(sets.Lullaby);
        elseif (string.contains(spell.Name, 'Hymnus')) then
            gFunc.EquipSet(sets.Hymnus);
        elseif (string.contains(spell.Name, 'Requiem')) then
            gFunc.EquipSet(sets.Requiem);
        elseif (string.contains(spell.Name, 'Carol')) then
            gFunc.EquipSet(sets.Carol);
        else
            gFunc.EquipSet(sets.Hymnus);
        end
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    local DEX = T { 'Evisceration', 'Wasp Sting', 'Viper Bite', 'Mandalic Stab' };
    local MAB = T { 'Gust Slash', 'Cyclone', 'Aeolian Edge' };
    local STR = T { 'Mercy Stroke' };
    if (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.DEX);
    elseif (MAB:contains(action.Name)) then
        gFunc.EquipSet(sets.MAB);
    elseif (STR:contains(action.Name)) then
        gFunc.EquipSet(sets.STR);
    end
end

return profile;
