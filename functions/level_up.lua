function ClearNights.level_up_table(source, hands, args) --args { description, level, chips, mult, money, juice_cards }
  if type(hands) ~= 'table' then
    hands = { hands }
  end
  args.level = args.level or 0
  args.chips = args.chips or 0
  args.mult = args.mult or 0
  args.money = args.money or 0
  args.juice_cards = args.juice_cards or {}
  args.juice_cards[#args.juice_cards + 1] = source
  
  local desc = (#hands == 1) and { 
    handname = args.description or localize(hands[1], 'poker_hands'),
    level = G.GAME.hands[hands[1]].level,
    chips = G.GAME.hands[hands[1]].chips,
    mult = G.GAME.hands[hands[1]].mult
  } or { 
    handname = args.description or "",
    level = "",
    chips = "...",
    mult = "..." 
  }
  update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 }, desc)
   
  --upgrade all hands
  for i = 1, #hands do
    local hand = G.GAME.hands[hands[i]]
    hand.chips_bonus = (hand.chips_bonus or 0) + args.chips
    hand.mult_bonus = (hand.mult_bonus or 0) + args.mult
    hand.level = math.max(1, hand.level + args.level)
    
    --apply
    hand.chips = hand.s_chips + hand.chips_bonus + hand.l_chips * (hand.level - 1)
    hand.mult = hand.s_mult + hand.mult_bonus + hand.l_mult * (hand.level - 1)
    hand.CN_money = (hand.CN_money or 0) + args.money
    
    --prevent negative scores
    if hand.chips < 0 then
      hand.chips_bonus = hand.chips_bonus - hand.chips
      hand.chips = 0
    end
    if hand.mult < 1 then
      hand.mult_bonus = hand.mult_bonus - hand.mult + 1
      hand.mult = 1
    end
  end
  
  local function get_sign(var)
    return (var > 0 and '+' or '-')
  end
  
  desc = (#hands == 1) and {
    level = G.GAME.hands[hands[1]].level,
    chips = G.GAME.hands[hands[1]].chips,
    mult = G.GAME.hands[hands[1]].mult
  } or {
    level = (args.level ~= 0) and (get_sign(args.level) .. math.abs(args.level)) or desc.level,
    chips = (args.level ~= 0) and get_sign(args.level) or (args.chips ~= 0 and get_sign(args.chips) .. math.abs(args.chips) or nil),
    mult = (args.level ~= 0) and get_sign(args.level) or (args.mult ~= 0 and get_sign(args.mult) .. math.abs(args.mult) or nil)
  }
  desc.money = args.money ~= 0 and (get_sign(args.money) .. localize('$') .. math.abs(args.money)) or nil
  
  local function shakeit(juice_cards, tarot_pulse)
    play_sound('tarot1')
    for _, card in pairs(juice_cards) do
      if card then
        card:juice_up(0.8, 0.5)
      end
    end
    G.TAROT_INTERRUPT_PULSE = tarot_pulse
    return true
  end

  local function shakeit_money(money_text, juice_cards, tarot_pulse)
    attention_text({ text = money_text, scale = 0.8, hold = 1, cover = G.hand_text_area.handname.parent, cover_colour = G.C.MONEY, emboss = 0.05, align = 'cm', cover_align = 'cm' })
    return shakeit(juice_cards, tarot_pulse)
  end
    
  --mult
  G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.2, func = function() return shakeit(args.juice_cards, true) end }))
  update_hand_text({ delay = 0 }, { mult = desc.mult, StatusText = true })
  
  --chips
  G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.9, func = function() return shakeit(args.juice_cards, true) end }))
  update_hand_text({ delay = 0 }, { chips = desc.chips, StatusText = true })
  
  --money
  if args.money ~= 0 then
    G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.9, func = function() return shakeit_money(desc.money, args.juice_cards, true) end }))
  end
  
  --level
  G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.9, func = function() return shakeit(args.juice_cards, false) end }))
  update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = desc.level })
  
  delay(1.3)

  --achievement check
  if args.level > 0 then
    for _, hand in ipairs(hands) do
      G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = function()
          check_for_unlock{ type = 'upgrade_hand', hand = hand, level = G.GAME.hands[hand].level } 
          return true 
        end
      }))
    end
  end
  
    --set visual values after
  local hand_info
  if G.hand and G.hand.highlighted and #G.hand.highlighted > 0 then
    local hand = (G.FUNCS.get_poker_hand_info(G.hand.highlighted))
    hand_info = { handname = localize(hand, 'poker_hands'), level = G.GAME.hands[hand].level, chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult }
  else
    hand_info = { handname = "", level = "", chips = 0, mult = 0 }
  end
  update_hand_text({ sound = 'button', volume = 0.7, pitch = 1.1, delay = 0 }, hand_info)
end



--payout of the money bonus
local old_func_evaluate = G.FUNCS.evaluate_play
function G.FUNCS.evaluate_play(e)
  local ret = old_func_evaluate(e)
  local poker_hand = G.FUNCS.get_poker_hand_info(G.play.cards)
  if G.GAME.hands[poker_hand] and G.GAME.hands[poker_hand].CN_money and G.GAME.hands[poker_hand].CN_money ~= 0 then
    ease_dollars(G.GAME.hands[poker_hand].CN_money)
    card_eval_status_text(G.play, 'extra', nil, nil, nil, {
      message = localize('clearnights_money_bonus') .. localize('$') .. G.GAME.hands[poker_hand].CN_money,
      colour = G.C.MONEY,
      no_juice = true
    })
    delay(0.6)
  end
  return ret
end