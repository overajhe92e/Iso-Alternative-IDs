SMODS.Rarity:take_ownership('Common',
    {
        loc_txt = {
            name = "ZAYIN"
        },
    },
    true
)

SMODS.Rarity:take_ownership('Uncommon',
    {
        loc_txt = {
            name = "TETH"
        },
    },
    true
)

SMODS.Rarity:take_ownership('Rare',
    {
        loc_txt = {
            name = "HE"
        },
    },
    true
)

SMODS.Rarity:take_ownership('Legendary',
    {
        loc_txt = {
            name = "WAW"
        },
    },
    true
)

local function replacecolours()
    G.C.RARITY[1] = HEX('28ee0d')
    G.C.RARITY[2] = HEX('1ba0fc')
    G.C.RARITY[3] = HEX('e8be00')
end

replacecolours()