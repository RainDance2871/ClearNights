SMODS.Atlas {
  key = 'Constellations',
  path = 'Constellations.png',
  px = 65,
  py = 95
}

local ConstellationAtlasKeys = {
  'aries',
  'taurus',
  'gemini',
  'cancer',
  'leo',
  'virgo',
  'libra',
  
  'scorpio',
  'sagittarius',
  'capricorn',
  'aquarius',
  'pisces',
  'ophiuchus',
  'undiscovered'
}

local ConstellationAtlasTable = {}
for i, key in ipairs(ConstellationAtlasKeys) do
  ConstellationAtlasTable[key] = i - 1
end
ConstellationAtlasKeys = nil

function ClearNights.GetConstellationAtlasTable(key)
  local pos = ConstellationAtlasTable[key]
  return { x = pos % 7, y = math.floor(pos / 7) }
end

SMODS.Atlas {
  key = 'Decks',
  path = 'Decks.png',
  px = 71,
  py = 95
}

local DeckAtlasKeys = {
  'escher',
  'excavation'
}

local DeckAtlasTable = {}
for i, key in ipairs(DeckAtlasKeys) do
  DeckAtlasTable[key] = i - 1
end
DeckAtlasKeys = nil

function ClearNights.GetDeckAtlasTable(key)
  local pos = DeckAtlasTable[key]
  return { x = pos % 5, y = math.floor(pos / 5) }
end

SMODS.Atlas {
  key = 'Jokers',
  path = 'Jokers.png',
  px = 71,
  py = 95 
}

SMODS.Atlas {
  key = 'Seals',
  path = 'Seals.png',
  px = 71,
  py = 95
}

SMODS.Atlas {
  key = 'Spectrals',
  path = 'Spectrals.png',
  px = 71,
  py = 95 
}

SMODS.Atlas {
  key = 'Vouchers',
  path = 'Vouchers.png',
  px = 71,
  py = 95 
}