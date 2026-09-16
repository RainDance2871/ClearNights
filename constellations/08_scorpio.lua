SMODS.Consumable {
  key = 'scorpio',
  set = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('scorpio'),
  unlocked = true,
  config = {
    mult_bonus = 3,
    chip_malus = 15
  },
  
  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.mult_bonus,
        card.ability.chip_malus
      }
    }
  end,
  
  use = function(self, card, area, copier)
    local table = {}
    for _, value in ipairs(G.handlist) do
      table[#table + 1] = value
    end
    ClearNights.level_up_table(card, table, { description = localize('k_all_hands'), chips = -card.ability.chip_malus, mult = card.ability.mult_bonus })
  end,
  
  can_use = function(self, card)
    return true
  end
}