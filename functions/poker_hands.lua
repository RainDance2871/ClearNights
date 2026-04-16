--find highest level poker hand
function ClearNights.highest_level_poker_hand()
  local hand_highest_level = nil
  if G.GAME then
    for _, value in ipairs(G.handlist) do
      if SMODS.is_poker_hand_visible(value) then
        if not hand_highest_level or G.GAME.hands[value].level >= G.GAME.hands[hand_highest_level].level then
          hand_highest_level = value
        end
      end
    end
  end
  return hand_highest_level
end