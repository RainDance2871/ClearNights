function ClearNights.generate_main_end_color_box(text, colour)
  return {{
    n = G.UIT.C,
    config = { align = 'bm', minh =  0.02 },
    nodes = {{
      n = G.UIT.C,
      config = {
        ref_table = card, 
        align = 'm', 
        colour = colour,
        r = 0.05, 
        padding = 0.05 
      },
      nodes = {{ 
        n = G.UIT.T, 
        config = { 
          text = ' ' .. text .. ' ',
          colour = G.C.UI.TEXT_LIGHT, 
          scale = 0.3, 
          shadow = true 
        }
      }}
    }}
  }}
end