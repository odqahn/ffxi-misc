local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Staff Strap',
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Dalmatica',
            Augment = { [1] = 'MP+15', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+4' } },
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -2', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Orochi Nodowa',
        Range = 'Gjallarhorn',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['IdleFighting'] = {
        Main = 'Blau Dolch',
        Sub = 'Mercurial Kris',
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Dalmatica',
            Augment = { [1] = 'MP+15', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+4' } },
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -2', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Orochi Nodowa',
        Range = 'Gjallarhorn',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Mog'] = {
        Back = 'Veela cape',
        Body = 'Kupo Suit',
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Neck = 'Orochi Nodowa',
        Range = 'Gjallarhorn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
    },
    ['PrecastSong'] = {
        Back = 'Veela cape',
        Body = 'Sha\'ir Manteel',
        Legs = { Name = 'Zenith Slacks',
            Augment = { [1] = 'Song spellcasting time -4%', [2] = 'MP recovered while healing +3', [3] = 'MND+2' } },
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' }
        },
        Ear2 = 'Loquac. Earring',
    },
    ['PrecastMagic'] = {
        Back = 'Veela cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+2' } },
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = 'Pet: Mag. Evasion+4', [2] = '"Fast Cast"+3', [3] = 'Haste+3' }
        },
        Ear2 = 'Loquac. Earring',
    },
    ['Buff'] = {
        Back = 'Birdman Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +4', [2] = 'Wind instrument skill +5' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Wind Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = 'Bard\'s Roundlet',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -2', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Wind Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['Debuff'] = {
        Back = 'Birdman Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +4', [2] = 'Wind instrument skill +5' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Wind Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = 'Bard\'s Roundlet',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -2', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Piper\'s Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Balrahn\'s Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['CastingMagic'] = {
        Back = 'Errant Cape',
        Body = 'Sha\'ir Manteel',
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
        Hands = 'Bricta\'s Cuffs',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Balrahn\'s Ring',
        Waist = 'Swift Belt',
    },
    ['NIN'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
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
        Back = 'Bard\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
        Hands = 'Dusk Gloves',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+4' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Range = 'Angel Lyre',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Swift Belt',
    },
    ['STR'] = {
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
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
        Back = 'Bard\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
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
        Back = 'Bard\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = 'Choral Slippers',
        Hands = 'Seiru\'s Kote',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Range = 'Oliphant',
        -- Ring1 = 'Breeze Ring',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Potent Belt',
        -- Waist = 'Grenadier Belt',
    },
    ['CHR'] = {
        Back = 'Birdman Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +4', [2] = 'Wind instrument skill +5' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Sha\'ir Crackows',
        Hands = 'Bricta\'s Cuffs',
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
        Hands = 'Bricta\'s Cuffs',
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
        Body = { Name = 'Dalmatica',
            Augment = { [1] = 'MP+15', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+4' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+3' }
        },
        Hands = 'Bard\'s Cuffs',
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -2', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
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
    Fight = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon reload skillchains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo BRD loading!');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 2 echo') end):once(2)
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
    if (args[1] == 'fight') then
        if (Settings.Fight == true) then
            Settings.Fight = false;
            gFunc.Message('Fight Set Off');
        else
            Settings.Fight = true;
            gFunc.Message('Fight Set On');
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
        if (Settings.Fight == true) then
            gFunc.Equip('Main', 'Blau Dolch');
            gFunc.Equip('Sub', 'Mercurial Kris');
        end
        -- Equip TH set during battle
        if (Settings.TH == true) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    elseif (Settings.Fight == true) then
        gFunc.EquipSet(sets.IdleFighting);
    else
        gFunc.EquipSet(sets.Idle);
    end

    -- Flagellant's in case of para
    if (para == 1) then
        gFunc.Equip('Waist', 'Flagellant\'s Rope');
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    local sneak = gData.GetBuffCount('Sneak');

    if (string.contains(action.Name, 'Waltz')) then
        gFunc.EquipSet(sets.CHR);
    elseif (action.Name == 'Spectral Jig') and (sneak ~= 0) then
        gFunc.CancelAction();
        AshitaCore:GetChatManager():QueueCommand(-1, '/debuff Sneak');
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/ja "Spectral Jig"<me>') end):once(2)
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    if (spell.Skill == 'Singing') then
        gFunc.EquipSet(sets.PrecastSong);
    elseif (spell.Name == 'Utsusemi: Ichi') then
        gFunc.EquipSet(sets.PrecastMagic);
        local delay = 2.4
        if (gData.GetBuffCount(66) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 66') end):once(delay)
        elseif (gData.GetBuffCount(444) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 444') end):once(delay)
        elseif (gData.GetBuffCount(445) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 445') end):once(delay)
        elseif (gData.GetBuffCount(446) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 446') end):once(delay)
        end
    else
        gFunc.EquipSet(sets.PrecastMagic);
    end
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    if (spell.Skill == 'Singing') then
        if (string.contains(spell.Name, 'Lullaby')) or (string.contains(spell.Name, 'Elegy')) or (string.contains(spell.Name, 'Finale')) or (string.contains(spell.Name, 'Threnody')) or (string.contains(spell.Name, 'Requiem')) then
            gFunc.EquipSet(sets.Debuff);
            if (Settings.Fight == false) then
                gFunc.Equip('Main', 'Chatoyant Staff');
                gFunc.Equip('Sub', 'Staff Strap');
            end
        else
            gFunc.EquipSet(sets.Buff);
            if (Settings.Fight == false) then
                gFunc.Equip('Main', 'Chatoyant Staff');
                gFunc.Equip('Sub', 'Staff Strap');
            end
        end
    elseif (spell.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.NIN);
        if (Settings.Fight == false) then
            gFunc.Equip('Main', 'Terra\'s Staff');
            gFunc.Equip('Sub', 'Staff Strap');
        end
    else
        gFunc.EquipSet(sets.CastingMagic);
        if (Settings.Fight == false) then
            gFunc.Equip('Main', 'Chatoyant Staff');
            gFunc.Equip('Sub', 'Staff Strap');
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
    local AGI = T { 'Exenterator' };
    -- local CHR = T { 'Mordant Ryme' };

    if (AGI:contains(action.Name)) then
        gFunc.EquipSet(sets.AGI);
    elseif (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.DEX);
    elseif (MAB:contains(action.Name)) then
        gFunc.EquipSet(sets.MAB);
    elseif (STR:contains(action.Name)) then
        gFunc.EquipSet(sets.STR);
    end
end

return profile;
