local profile = {};
local sets = {
    ['Idle'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Boxer\'s Mantle',
        Body = 'Arhat\'s Gi +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
        Hands = 'Denali Wristbands',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+2' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Mog'] = {
        Ammo = 'Fuma Shuriken',
        Body = 'Kupo Suit',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Neck = 'Orochi Nodowa',
    },
    ['Damage_Haste'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Earth resistance+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Damage_Acc'] = {
        Ammo = 'Fire Bomblet',
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Earth resistance+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Potent Belt',
    },
    ['Tanking'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Earth resistance+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['TankingNoShadow'] = {
        -- Ammo = 'Nokizaru Shuriken',
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = 'Arhat\'s Gi +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = 'Denali Wristbands',
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Evasion+3', [2] = 'Phys. dmg. taken -4%', [3] = 'Haste+2' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Koga Sarashi',
    },
    ['Precast'] = {
        Ear2 = 'Loquac. Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
    },
    ['Utsu'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Earth resistance+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = 'Denali Wristbands',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Mijin'] = {
        Main = 'Nagi',
        Sub = 'Narigitsune',
        Ammo = 'Reacton arm',
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = 'Yasha Jinpachi',
        Legs = 'Yasha Hakama',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Tamas Ring',
        Waist = 'Koga Sarashi',
    },
    ['Jutsu'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
        Hands = 'Yasha Tekko',
        Head = 'Yasha Jinpachi',
        Legs = 'Denali Kecks',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Salire Belt',
    },
    ['JutsuDebuffEnmity'] = {
        Ammo = 'Nokizaru Shuriken',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Eris\' Earring',
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
        Hands = 'Yasha Tekko',
        Head = 'Yasha Jinpachi',
        Legs = 'Denali Kecks',
        Neck = 'Ninjutsu Torque',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Salire Belt',
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
        Ring1 = 'Sattva Ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Warwolf Belt',
    },
    ['EnmityMA'] = {
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
        Ring1 = 'Sattva Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Salire Belt',
    },
    ['RA'] = {
        Ammo = 'Fuma Shuriken',
        Back = 'Amemet Mantle +1',
        Body = 'Koga Chainmail',
        Ear1 = 'Vision Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Dusk Ledelsens',
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = 'Optical Hat',
        Legs = 'Dusk Trousers',
        Neck = 'Peacock Amulet',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Behemoth Ring',
        Waist = 'Precise Belt',
    },
    ['WSDEX'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Optical Hat',
        -- Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Pixie Earring',
        Body = 'Haubergeon +1',
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Commander\'s Cape',
        Waist = 'Fatality Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = 'Koga Kyahan',
    },
    ['WSAGI'] = {
        Ammo = 'Fire Bomblet',
        Back = 'Commander\'s Cape',
        -- Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Earth resistance+5', [2] = 'Haste+5', [3] = '"Subtle Blow"+3' } },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Koga Kyahan',
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Potent Belt',
    },
    ['WSDEXINT'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Pixie Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Ring1 = 'Snow Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Commander\'s Cape',
        Waist = 'Fatality Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
    },
    ['WSSTRINT'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Eris\' Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Commander\'s Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dusk Trousers',
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
    },
    ['CHR'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Corse Cape',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Corsette',
    },
    ['Cure'] = {
        Ammo = 'Goblin Cracker',
        Head = 'Maat\'s Cap',
        Neck = 'Evasion Torque',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Denali Wristbands',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
    },
    ['Stoneskin'] = {
        Ammo = 'Goblin Cracker',
        Head = 'Maat\'s Cap',
        Neck = 'Stone Gorget',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Denali Wristbands',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
    },
    ['Songs'] = {
        Range = 'Marvelous Cheer',
        Head = 'Yasha Jinpachi',
        Neck = 'Wind Torque',
        Ear1 = 'Musical Earring',
        Ear2 = 'Wind Earring',
        Body = 'Yasha Samue',
        Hands = 'Yasha Tekko',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Yasha Hakama',
        Feet = 'Yasha Sune-Ate',
    },
    ['EnmitySongs'] = {
        Range = 'Marvelous Cheer',
        Back = 'Cerberus Mantle',
        Body = 'Yasha Samue',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Eris\' Earring',
        Feet = 'Yasha Sune-Ate',
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Harmonia\'s Torque',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Sleep'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = 'Arhat\'s Gi +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = {
            Name = 'Suzaku\'s Sune-Ate',
            Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' }
        },
        Hands = 'Denali Wristbands',
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
};
profile.Sets = sets;

local Settings = {
    Parade = false,
    Mog = false,
    Accuracy = false,
    TH = false,
    Tanking = false,
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon reload skillchains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo NIN loading!');
    gFunc.Equip('Main', 'Kikoku');
    gFunc.Equip('Sub', 'Mercurial Kris');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 4 echo') end):once(2)
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
    if (args[1] == 'th') then
        if (Settings.TH == true) then
            Settings.TH = false;
            gFunc.Message('TH Set Off');
        else
            Settings.TH = true;
            gFunc.Message('TH Set On');
        end
    end
    if (args[1] == 'tank') then
        if (Settings.Tanking == true) then
            Settings.Tanking = false;
            gFunc.Message('Tanking Set Off');
        else
            Settings.Tanking = true;
            gFunc.Message('Tanking Set On');
        end
    end
end

profile.HandleDefault = function()
    local shadow = gData.GetBuffCount(66)
    local shadow2 = gData.GetBuffCount(444)
    local shadow3 = gData.GetBuffCount(445)
    local shadow4 = gData.GetBuffCount(446)
    local sleep = gData.GetBuffCount('Sleep');
    local para = gData.GetBuffCount('Paralysis');
    -- local silenced = gData.GetBuffCount('Silenced');
    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
        if (sleep == 1) then
            gFunc.EquipSet(sets.Sleep);
            -- elseif (silenced == true) then
            --     AshitaCore:GetChatManager():QueueCommand(1, '/item "Echo Drops" <me>');
        elseif (player.HPP <= 50) then
            gFunc.EquipSet(sets.TankingNoShadow);
        elseif (Settings.Tanking == true) then
            -- Equipe big tanking time gear
            if (shadow == 1) or (shadow2 == 1) or (shadow3 == 1) or (shadow4 == 1) then
                gFunc.EquipSet(sets.Tanking);
            else
                gFunc.EquipSet(sets.TankingNoShadow);
            end
        elseif (Settings.Accuracy == true) then
            gFunc.EquipSet(sets.Damage_Acc);
        else
            gFunc.EquipSet(sets.Damage_Haste);
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
    local sneak = gData.GetBuffCount('Sneak');
    local yonin = gData.GetBuffCount('Yonin');

    if (yonin == 1) then
        if (action.Name == 'Bersek') or (action.Name == 'Defender') or (action.Name == 'Warcry') then
            gFunc.EquipSet(sets.EnmityJA);
        end
    elseif (action.Name == 'Provoke') or (action.Name == 'Last Resort') or (action.Name == 'Souleater') then
        gFunc.EquipSet(sets.EnmityJA);
    elseif (action.Name == 'Yonin') then
        gFunc.EquipSet(sets.EnmityJA);
        Settings.Tanking = true;
        gFunc.Message('Tanking Mode On');
    elseif (action.Name == 'Innin') then
        Settings.Tanking = false;
        gFunc.Message('Tanking Mode Off');
    elseif (action.Name == 'Mijin Gakure') then
        gFunc.EquipSet(sets.Mijin);
    elseif (string.contains(action.Name, 'Waltz')) then
        gFunc.EquipSet(sets.CHR);
    elseif (action.Name == 'Spectral Jig') and (sneak ~= 0) then
        gFunc.CancelAction();
        AshitaCore:GetChatManager():QueueCommand(-1, '/debuff Sneak');
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/ja "Spectral Jig" <me>') end):once(2)
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local action = gData.GetAction()
    local delay = 2.4

    if (action.Name == 'Stun') then
        gFunc.EquipSet(sets.EnmityMA);
    else
        gFunc.EquipSet(sets.Precast);
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
    local action = gData.GetAction();

    if (action.Skill == 'Ninjutsu') then
        if (string.contains(action.Name, 'Utsusemi')) then
            gFunc.EquipSet(sets.Utsu);
        elseif (Settings.Tanking == true) then
            if (action.Name == '"Dokumori: Ichi"') or (action.Name == 'Jubaku: Ichi') or (action.Name == 'Hojo: Ni') or (action.Name == 'Kurayami: Ni') then
                gFunc.EquipSet(sets.JutsuDebuffEnmity);
            else
                gFunc.EquipSet(sets.Jutsu);
            end
        else
            gFunc.EquipSet(sets.Jutsu);
        end
    elseif (action.Name == 'Sleep') or (action.Name == 'Stun') or (action.Name == 'Drain') or (action.Name == 'Aspir') then
        gFunc.EquipSet(sets.EnmityMA);
    elseif (string.contains(action.Name, 'Cure')) then
        gFunc.EquipSet(sets.Cure);
    elseif (action.Name == 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
    elseif (string.contains(action.Name, 'Mazurka')) or (string.contains(action.Name, 'Lullaby')) then
        gFunc.EquipSet(sets.EnmitySongs);
    elseif (action.Skill == 'Singing') then
        gFunc.EquipSet(sets.Songs);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();

    local STRDEX = T { 'Blade: Jin', 'Blade: Rin', 'Blade: Retsu', 'Blade: Ten', 'Blade: Ku' };
    local STRINT = T { 'Blade: Teki', 'Blade: To', 'Blade: Chi', 'Blade: Ei', 'Blade: Kamu' };
    local DEX = T { 'Blade: Metsu', 'Blade: Shun' };
    local AGI = T { 'Exenterator' };
    local DEXINT = T { 'Blade: Yu' };
    if (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEX);
    elseif (STRINT:contains(action.Name)) then
        gFunc.EquipSet(sets.WSSTRINT);
    elseif (AGI:contains(action.Name)) then
        gFunc.EquipSet(sets.WSAGI);
    elseif (STRDEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEX);
    elseif (DEXINT:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEXINT);
    end
end

return profile;
