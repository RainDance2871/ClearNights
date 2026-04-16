SMODS.ConsumableType {
  key = 'CN_Constellation',
  loc_txt = {
    name = 'Constellation',
    collection = 'Constellations'
  },
  default = 'c_ClearNights_gemini',
  shop_rate = 2,
  collection_rows = { 6, 7 },
  primary_colour = HEX('745df7'),
  secondary_colour = HEX('745df7')
}

SMODS.UndiscoveredSprite {
  key = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('undiscovered')
}