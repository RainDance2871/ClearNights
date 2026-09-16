SMODS.Consumable {
  key = 'aquarius',
  set = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('aquarius'),
  unlocked = true,
  config = {
    border_hand = 'Three of a Kind',
    chip_bonus = 25
  },
  
  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        localize(card.ability.border_hand, 'poker_hands'),
        card.ability.chip_bonus
      }
    }
  end,
  
  use = function(self, card, area, copier)
    local table = {}
    for _, value in ipairs(G.handlist) do
      table[#table + 1] = value
      if value == card.ability.border_hand then
        break
      end
    end
    ClearNights.level_up_table(card, table, { description = localize(card.ability.border_hand, 'poker_hands') .. '+', chips = card.ability.chip_bonus })
  end,
  
  can_use = function(self, card)
    return true
  end
}