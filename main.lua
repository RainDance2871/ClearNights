ClearNights = SMODS.current_mod

function ClearNights.load_folder(folder)
  local filenames = SMODS.NFS.getDirectoryItems(ClearNights.path .. folder)
  for i = 1, #filenames do
    assert(SMODS.load_file(folder .. '/' .. filenames[i]))()
  end
end

--load mod files
assert(SMODS.load_file('atlas.lua'))()
assert(SMODS.load_file('config_menu.lua'))()

ClearNights.load_folder('decks')
ClearNights.load_folder('functions')
ClearNights.load_folder('seals')
ClearNights.load_folder('spectrals')
ClearNights.load_folder('take_ownership')
ClearNights.load_folder('vouchers')
  
if ClearNights.config.constellations then
  assert(SMODS.load_file('constellation_type.lua'))()
  ClearNights.load_folder('constellations')
  if next(SMODS.find_mod('rainydays')) then
    RainyDays.Constellations = true
  end
end