local profile = {};
local isTargetTagged = gFunc.LoadFile('common\\tag.lua');

local sets = {
    ['SingleWeapon'] = {
        Main = 'Blau Dolch',
        Sub = { Name = 'Genbu\'s Shield', Augment = '"Cure" spellcasting time -3%' },
    },
    ['DualWeapons'] = {
        Main = 'Blau Dolch',
        Sub = 'Mercurial Kris',
    },
    ['Silktone'] = {
        Main = 'Silktone',
        Sub = { Name = 'Genbu\'s Shield', Augment = '"Cure" spellcasting time -3%' },
    },
    ['ChanterStaff'] = {
        Main = 'Chanter\'s Staff',
        Sub = 'Magic Strap',
    },
    ['Terra'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Staff Strap',
    },
    ['TerraSpellInterrupt'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Magic Strap',
    },
    ['MajestasChr'] = {
        Main = { Name = 'Majestas', Augment = { [1] = 'Mag. Acc.+8', [2] = 'MP+9', [3] = '"Mag. Atk. Bns."+5' } },
        Sub = 'Bugard Strap',
    },
    ['MajestasEarth'] = {
        Main = { Name = 'Majestas', Augment = { [1] = 'Mag. Acc.+8', [2] = 'MP+9', [3] = '"Mag. Atk. Bns."+5' } },
        Sub = 'Earth Grip',
    },
    ['ChatoyantEnmity'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
    },
    ['ChatoyantChr'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Bugard Strap',
    },
    ['ChatoyantEarth'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Earth Grip',
    },
    ['ChatoyantSpellInterrupt'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Magic Strap',
    },
    ['Idle'] = {
        Back = 'Cheviot Cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Dst. Leggings +1',
        Hands = 'Dst. Mittens +1',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = 'Haste+3' } },
        Legs = 'Goliard Trews',
        Neck = 'Evasion Torque',
        Range = 'Hamelin Flute',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Mog'] = {
        Back = 'Cheviot Cape',
        Body = 'Kupo Suit',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Dst. Leggings +1',
        Hands = 'Dst. Mittens +1',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = 'Haste+3' } },
        Neck = 'Orochi Nodowa',
        Range = 'Gjallarhorn',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Lowhp'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Earth Grip',
        Back = 'Cheviot Cape',
        Body = 'Dalmatica',
        Head = 'Zenith Crown',
        Hands = 'Zenith Mitts',
        Neck = 'Orochi Nodowa',
        Legs = {
            Name = 'Zenith Slacks',
            Augment = { [1] = 'Song spellcasting time -5%', [2] = 'Wind instrument skill +5', [3] = 'AGI+1' }
        },
        Feet = 'Zenith Pumps',
        Ear1 = 'Astral Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Succor Ring',
        Ring2 = 'Vivian Ring',
        Waist = 'Marching Belt',
    },
    ['Regen'] = {
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Neck = 'Orochi Nodowa',
    },
    ['PrecastSong'] = {
        Back = 'Veela cape',
        Body = 'Sha\'ir Manteel',
        Legs = {
            Name = 'Zenith Slacks',
            Augment = { [1] = 'Song spellcasting time -5%', [2] = 'Wind instrument skill +5', [3] = 'AGI+1' }
        },
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
        Ear2 = 'Loquac. Earring',
        Ring1 = 'Minstrel\'s Ring',
        Ring2 = 'Naji\'s Loop',
    },
    ['PrecastMagic'] = {
        Back = 'Veela cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
        Ring2 = 'Naji\'s Loop',
        Ear2 = 'Loquac. Earring',
    },
    ['Buff'] = {
        Back = 'Astute Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +5', [2] = 'Wind instrument skill +6' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Wind Earring',
        Feet = { Name = 'Shadow Clogs', Augment = { [1] = 'Singing skill +4', [2] = 'MP+12', [3] = '"Resist Sleep"+5' } },
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = 'Demon Helm +1',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -3', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Wind Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Waist = 'Marching Belt',
    },
    ['Debuff'] = {
        Back = 'Birdman Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +5', [2] = 'Wind instrument skill +6' } },
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Feet = { Name = 'Shadow Clogs', Augment = { [1] = 'Singing skill +4', [2] = 'MP+12', [3] = '"Resist Sleep"+5' } },
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = 'Maat\'s Cap',
        Neck = 'Piper\'s Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Gleeman\'s Belt',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -3', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
    },
    ['Requiem'] = {
        Back = 'Birdman Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +5', [2] = 'Wind instrument skill +6' } },
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Feet = { Name = 'Shadow Clogs', Augment = { [1] = 'Singing skill +4', [2] = 'MP+12', [3] = '"Resist Sleep"+5' } },
        Hands = { Name = 'Chl. Cuffs +1', Augment = { [1] = 'Mag. Acc.+3', [2] = 'CHR+3' } },
        Head = 'Maat\'s Cap',
        Neck = 'Piper\'s Torque',
        Range = 'Requiem Flute',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Gleeman\'s Belt',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -3', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
    },
    ['Magic'] = {
        Back = 'Errant Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
        Hands = 'Bricta\'s Cuffs',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = 'Haste+3' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Succor Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Stoneskin'] = {
        Range = 'Angel Lyre',
        Head = 'Maat\'s Cap',
        Neck = 'Stone Gorget',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Vivian Ring',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Bard\'s Cannions',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
    },
    ['Cure'] = {
        Range = 'Angel Lyre',
        Head = 'Maat\'s Cap',
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Naji\'s Loop',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Bard\'s Cannions',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
    },
    ['Utsusemi'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
        Hands = 'Bard\'s Cuffs',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = 'Haste+3' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Alert Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Fighting'] = {
        Back = 'Bard\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        -- Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Love Torque',
        Range = 'Angel Lyre',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['DEX'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Pixie Earring',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'INT+3' } },
        Hands = {
            Name = 'Hct. Mittens +1',
            Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' }
        },
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Love Torque',
        Range = 'Oliphant',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['DEXINT'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Pixie Earring',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'INT+3' } },
        Hands = {
            Name = 'Hct. Mittens +1',
            Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' }
        },
        Head = 'Maat\'s Cap',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Love Torque',
        Range = 'Oliphant',
        Ring1 = 'Galdr Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['Mercy'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'INT+3' } },
        Hands = {
            Name = 'Hct. Mittens +1',
            Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' }
        },
        Head = 'Maat\'s Cap',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -3', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Love Torque',
        Range = 'Frenzy fife',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['Exenterator'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'INT+3' } },
        Hands = {
            Name = 'Hct. Mittens +1',
            Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' }
        },
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Range = 'Oliphant',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Potent Belt',
    },
    ['Mordant'] = {
        Back = 'Bard\'s Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Pixie Earring',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'INT+3' } },
        Hands = {
            Name = 'Hct. Mittens +1',
            Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' }
        },
        Head = 'Maat\'s Cap',
        Legs = {
            Name = 'Chl. Cannions +1',
            Augment = { [1] = 'Song recast delay -3', [2] = 'Earth Affinity: Magic Accuracy+5' }
        },
        Neck = 'Love Torque',
        Range = 'Oliphant',
        Ring1 = 'Light Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['CHR'] = {
        Ammo = 'Verthandi\'s Gem',
        Back = 'Birdman Cape',
        Body = { Name = 'Chl. Jstcorps +1', Augment = { [1] = 'Singing skill +5', [2] = 'Wind instrument skill +6' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Loquac. Earring',
        Feet = { Name = 'Shadow Clogs', Augment = { [1] = 'Singing skill +4', [2] = 'MP+12', [3] = '"Resist Sleep"+5' } },
        Hands = 'Bricta\'s Cuffs',
        Head = 'Bard\'s Roundlet',
        Legs = 'Bard\'s Cannions',
        Neck = 'Piper\'s Torque',
        Range = 'Gjallarhorn',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Gleeman\'s Belt',
    },
    ['Sleep'] = {
        Back = 'Bard\'s Cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Dst. Leggings +1',
        Hands = 'Dst. Mittens +1',
        Head = { Name = 'Chl. Roundlet +1', Augment = { [1] = '"Regen"+3', [2] = '"Refresh"+1' } },
        Legs = 'Goliard Trews',
        Neck = 'Opo-opo Necklace',
        Range = 'Hamelin Flute',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
    Fight = false,
    FastCast = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load chains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo BRD loading!');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 2 echo') end):once(2)
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/addon unload chains');
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
    if (args[1] == 'fight') then
        if (Settings.Fight == true) then
            Settings.Fight = false;
            gFunc.Message('Fight Set Off');
        else
            Settings.Fight = true;
            gFunc.Message('Fight Set On');
        end
    end
    if (args[1] == 'fastcasting') then
        if (Settings.FastCast == true) then
            Settings.Fight = false;
            Settings.FastCast = false;
            gFunc.Message('Fast casting Set Off');
        else
            Settings.FastCast = true;
            gFunc.Message('Fast casting Set On');
        end
    end
end

profile.HandleDefault = function()
    local sleep = gData.GetBuffCount('Sleep');
    -- local silenced = gData.GetBuffCount('Silenced');

    local player = gData.GetPlayer();

    -- Set management
    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
        -- elseif (silenced == true) then
        --     AshitaCore:GetChatManager():QueueCommand(1, '/item "Echo Drops" <me>');
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Fighting);
        -- Tagging TH during battle
        if (not isTargetTagged()) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    else
        if (Settings.FastCast == true) then
            gFunc.EquipSet(sets.Lowhp);
        else
            gFunc.EquipSet(sets.Idle);
            if (player.HPP <= 90 or player.MPP <= 90) then
                gFunc.EquipSet(sets.Regen);
            end
        end
    end

    -- Weapons management
    if (Settings.Fight == false) then
        gFunc.EquipSet(sets.Terra);
    elseif (player.SubJob == 'NIN') or (player.SubJob == 'DNC') then
        gFunc.EquipSet(sets.DualWeapons);
    else
        gFunc.EquipSet(sets.SingleWeapon);
    end

    -- In cast hp drop, equip PDR earring
    if (player.HPP <= 25) then
        gFunc.Equip('Ear2', 'Minstrel\'s Earring');
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
    local delay = 2.4
    local spell = gData.GetAction();

    if (spell.Skill == 'Singing') then
        gFunc.EquipSet(sets.PrecastSong);
    else
        if (Settings.Fight == false) then
            gFunc.EquipSet(sets.Silktone);
        end
        gFunc.EquipSet(sets.PrecastMagic);
    end

    if (gData.GetBuffCount(66) == 1) then
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 66') end):once(delay)
    elseif (gData.GetBuffCount(444) == 1) then
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 444') end):once(delay)
    elseif (gData.GetBuffCount(445) == 1) then
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 445') end):once(delay)
    elseif (gData.GetBuffCount(446) == 1) then
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 446') end):once(delay)
    end
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    if (spell.Skill == 'Singing') then
        if (string.contains(spell.Name, 'Lullaby')) or (string.contains(spell.Name, 'Finale')) or (string.contains(spell.Name, 'Threnody')) then
            gFunc.EquipSet(sets.Debuff);
            if (Settings.Fight == false) then
                gFunc.EquipSet(sets.MajestasChr);
            end
        elseif (string.contains(spell.Name, 'Requiem')) then
            gFunc.EquipSet(sets.Requiem);
            if (Settings.Fight == false) then
                gFunc.EquipSet(sets.MajestasChr);
            end
        elseif (string.contains(spell.Name, 'Elegy')) then
            gFunc.EquipSet(sets.Debuff);
            if (Settings.Fight == false) then
                gFunc.EquipSet(sets.MajestasEarth);
            end
        else
            gFunc.EquipSet(sets.Buff);
            if (Settings.Fight == false) then
                gFunc.EquipSet(sets.ChanterStaff);
            end
        end
    elseif (spell.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.Utsusemi);
        if (Settings.Fight == false) then
            gFunc.EquipSet(sets.TerraSpellInterrupt);
        end
    elseif (string.contains(spell.Name, 'Cure')) then
        gFunc.EquipSet(sets.Cure);
        if (Settings.Fight == false) then
            gFunc.EquipSet(sets.ChatoyantEnmity);
        end
    elseif (spell.Name == 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
        if (Settings.Fight == false) then
            gFunc.EquipSet(sets.ChatoyantEnmity);
        end
    else
        gFunc.EquipSet(sets.Magic);
        if (Settings.Fight == false) then
            gFunc.EquipSet(sets.ChatoyantSpellInterrupt);
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
    local DEXINT = T { 'Gust Slash', 'Cyclone', 'Aeolian Edge' };
    local STR = T { 'Mercy Stroke' };
    local AGI = T { 'Exenterator' };
    local CHR = T { 'Mordant Ryme' };

    if (AGI:contains(action.Name)) then
        gFunc.EquipSet(sets.Exenterator);
    elseif (CHR:contains(action.Name)) then
        gFunc.EquipSet(sets.Mordant);
    elseif (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.DEX);
    elseif (DEXINT:contains(action.Name)) then
        gFunc.EquipSet(sets.DEXINT);
    elseif (STR:contains(action.Name)) then
        gFunc.EquipSet(sets.Mercy);
    end
end

return profile;
