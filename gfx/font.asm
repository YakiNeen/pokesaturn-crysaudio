IF DEF(_SATURN)
PokemonLogoGraphics: INCBIN "gfx/title/pokemon_saturn.2bpp"
ENDC
IF DEF(_MARS)
PokemonLogoGraphics: INCBIN "gfx/title/pokemon_mars.2bpp"
ENDC

FontGraphics:: INCBIN "gfx/font/font.1bpp"
FontGraphicsEnd::

ABTiles: INCBIN "gfx/font/AB.2bpp"

HpBarAndStatusGraphics:: INCBIN "gfx/font/font_battle_extra.2bpp"
HpBarAndStatusGraphicsEnd::

BattleHudTiles1: INCBIN "gfx/battle/battle_hud_1.1bpp"
BattleHudTiles1End:
BattleHudTiles2: INCBIN "gfx/battle/battle_hud_2.1bpp"
BattleHudTiles3: INCBIN "gfx/battle/battle_hud_3.1bpp"
BattleHudTiles3End:

NintendoCopyrightLogoGraphics: INCBIN "gfx/splash/copyright.2bpp"
NintendoCopyrightLogoGraphicsEnd:

IF DEF(_SATURN)
TextBoxGraphics:: INCBIN "gfx/font/font_extra_saturn.2bpp"
ENDC
IF DEF(_MARS)
TextBoxGraphics:: INCBIN "gfx/font/font_extra_mars.2bpp"
ENDC
TextBoxGraphicsEnd::

PokedexTileGraphics: INCBIN "gfx/pokedex/pokedex.2bpp"
PokedexTileGraphicsEnd:

WorldMapTileGraphics: INCBIN "gfx/town_map/town_map.2bpp"
WorldMapTileGraphicsEnd:

IF DEF(_SATURN)
PlayerCharacterTitleGraphics: INCBIN "gfx/title/player_saturn.2bpp"
ENDC
IF DEF(_MARS)
PlayerCharacterTitleGraphics: INCBIN "gfx/title/player_mars.2bpp"
ENDC
PlayerCharacterTitleGraphicsEnd:
