SMODS.Joker {
    key = "iso_mao",
    cost = 1,
    rarity = "isoid_aleph"
}

SMODS.Joker {
    key = "iso_justitia",
    cost = 1,
    rarity = "isoid_aleph"
}

SMODS.Joker {
    key = "iso_apoc",
    cost = 1,
    rarity = "isoid_aleph"
}

SMODS.Joker {
    key = "iso_myhaircoupons",
    cost = 100,
    rarity = "isoid_aleph"
}

SMODS.Joker {
    key = "iso_gud",
    cost = 100,
    rarity = "isoid_aleph",
    config = {
        extra = {}
    },
    loc_vars = function(self, info_queue, card)
        if G.jokers then
            local commons = 0
            local uncommons = 0
            local rares = 0
            local legends = 0
            local alphas = 0
            local betas = 0
            local gammas = 0
            local deltas = 0
            local omegas = 0
            local alephs = 0
            local jkr = #G.jokers.cards
            for k, v in ipairs(G.jokers.cards) do
                if v.config.center.rarity == 1 then
                    commons = commons + 1
                end
                if v.config.center.rarity == 2 then
                    uncommons = uncommons + 1
                end
                if v.config.center.rarity == 3 then
                    rares = rares + 1
                end
                if v.config.center.rarity == 4 then
                    legends = legends + 1
                end
                if v.config.center.rarity == "isoid_aleph" then
                    alephs = alephs + 1
                end
            end
            local mult = ((jkr + uncommons) * ((commons / 100) + 1) * (1 + (rares / jkr)) * (legends + 1)) ^ alephs + 1
            local op = math.floor(math.log(mult, 10))
            return {
                vars = { mult, op, "{", "}" }
            }
        else
            return {
                vars = { 1, 1, "{", "}" }
            }
        end
    end,
    calculate = function(self, card, context)
        local commons = 0
        local uncommons = 0
        local rares = 0
        local legends = 0
        local alephs = 0
        local jkr = #G.jokers.cards
        for k, v in ipairs(G.jokers.cards) do
            if v.config.center.rarity == 1 then
                commons = commons + 1
            end
            if v.config.center.rarity == 2 then
                uncommons = uncommons + 1
            end
            if v.config.center.rarity == 3 then
                rares = rares + 1
            end
            if v.config.center.rarity == 4 then
                legends = legends + 1
            end
            if v.config.center.rarity == "isoid_aleph" then
                alephs = alephs + 1
            end
        end
        local mult = ((jkr + uncommons) * ((commons / 100) + 1) * (1 + (rares / jkr)) * (legends + 1)) ^ alephs + 1
        local op = math.floor(math.log(mult, 10))
        if context.joker_main then
            return {
                remove_default_message = true,
                message = "{" .. tostring(op) .. "}" .. tostring(mult),
                hypermult = { op, mult }
            }
        end
    end
}
