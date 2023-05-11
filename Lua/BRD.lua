local profile = {};
local sets = {
    ['Idle'] = {
        Back = 'Veela cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Legs = 'Bard\'s Cannions',
        Neck = 'Orochi Nodowa',
        Range = 'Gjallarhorn',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Trumpet Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['Mog'] = {
        Back = 'Veela cape',
        Body = 'Kupo Suit',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Neck = 'Orochi Nodowa',
        Range = 'Gjallarhorn',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['Precast'] = {
        Back = 'Veela cape',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' }
        },
        Ear2 = 'Loquac. Earring',
    },
    ['Buff'] = {
        Back = 'Veela cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' } },
        Hands = 'Bricta\'s Cuffs',
        Head = 'Bard\'s Roundlet',
        Legs = 'Bard\'s Cannions',
        Neck = 'Wind Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Waist = 'Swift Belt',
    },
    ['Debuff'] = {
        Back = 'Birdman Cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Head = 'Bard\'s Roundlet',
        Legs = 'Bard\'s Cannions',
        Neck = 'Piper\'s Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Balrahn\'s Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['CastingMagic'] = {
        Back = 'Veela cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' } },
        Hands = 'Bricta\'s Cuffs',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+4' } },
        Legs = 'Bard\'s Cannions',
        Neck = 'Evasion Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Balrahn\'s Ring',
        Waist = 'Swift Belt',
    },
    ['NIN'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Ocl. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' } },
        Hands = 'Bard\'s Cuffs',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Tarutaru Sash',
    },
    ['Fighting'] = {
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' } },
        Hands = 'Dusk Gloves',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Range = 'Oliphant',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Swift Belt',
    },
    ['STR'] = {
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Alkyoneus\'s Brc.',
        Head = 'Maat\'s Cap',
        Legs = 'Dusk Trousers',
        Neck = 'Fotia Gorget',
        Range = 'Frenzy fife',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['DEX'] = {
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Range = 'Oliphant',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['AGI'] = {
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Feet = 'Choral Slippers',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Range = 'Oliphant',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Grenadier Belt',
    },
    ['CHR'] = {
        Back = 'Birdman Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Sha\'ir Gages',
        Head = 'Bard\'s Roundlet',
        Legs = 'Bard\'s Cannions',
        Neck = 'Piper\'s Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['MAB'] = {
        Back = 'Commander\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Moldavite Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Range = 'Oliphant',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['Sleep'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+4' } },
        Legs = 'Bard\'s Cannions',
        Neck = 'Opo-opo Necklace',
        Range = 'Hamelin Flute',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
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
    local sleep = gData.GetBuffCount('Sleep');
    local para = gData.GetBuffCount('Paralysis');

    local player = gData.GetPlayer();

    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Fighting);
        -- Equip TH set during battle
        if (Settings.TH == true) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Idle);
    else
        if (Settings.Mog == true) then
            gFunc.EquipSet(sets.Mog);
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
    if (string.contains(action.Name, 'Waltz')) then
        gFunc.EquipSet(sets.CHR);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.Precast);
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    if (spell.Skill == 'Singing') then
        if (string.contains(spell.Name, 'Lullaby')) or (string.contains(spell.Name, 'Elegy')) or (string.contains(spell.Name, 'Finale')) or (string.contains(spell.Name, 'Threnody')) or (string.contains(spell.Name, 'Requiem')) then
            gFunc.EquipSet(sets.Debuff);
        else
            gFunc.EquipSet(sets.Buff);
        end
    elseif (spell.Skill == 'Healing Magic') or (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.CastingMagic);
    elseif (spell.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.NIN);
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
    local AGI = T { 'Exenterator' };

    if (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.DEX);
    elseif (MAB:contains(action.Name)) then
        gFunc.EquipSet(sets.MAB);
    elseif (STR:contains(action.Name)) then
        gFunc.EquipSet(sets.STR);
    end
end

return profile;
