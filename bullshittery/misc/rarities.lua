SMODS.Rarity {
    key = "aleph",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('ff0000'),
    loc_txt = {
        name = "ALEPH"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end
}