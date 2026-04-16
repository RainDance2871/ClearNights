function ClearNights.create_consumable(message_card, set, amount, key)
  amount = math.min(amount or 1, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer))
  G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + amount
  if amount > 0 then
    local loc_key = (set == 'CN_Constellation' and 'clearnights_constellation')
      or (set == 'Planet' and 'k_planet')
      or (set == 'Spectral' and 'k_spectral') 
      or (set == 'Tarot' and 'k_tarot')
    return {
      message = localize('clearnights_plus') .. amount .. ' ' .. localize(loc_key),
      colour = G.C.SECONDARY_SET[set],
      message_card = card,
      func = function()
        G.E_MANAGER:add_event(Event({
          func = function()
            for i = 1, amount do 
              SMODS.add_card({ set = set, key = key })
            end
            G.GAME.consumeable_buffer = 0
            return true
          end
        }))
      end
    }
  end
end