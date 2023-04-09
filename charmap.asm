; $00-$17 are TX_* constants (see macros/scripts/text.asm)

; Control characters (see home/text.asm)

	charmap "<NULL>",    $00
	charmap "<LF>",      $1f
	charmap "<PAGE>",    $49
	charmap "<PKMN>",    $4a ; "<PK><MN>"
	charmap "<_CONT>",   $4b ; implements "<CONT>"
	charmap "<SCROLL>",  $4c
	charmap "<NEXT>",    $4e
	charmap "<LINE>",    $4f
	charmap "@",         $50 ; string terminator
	charmap "<PARA>",    $51
	charmap "<PLAYER>",  $52 ; wPlayerName
	charmap "<RIVAL>",   $53 ; wRivalName
	charmap "#",         $54 ; "POKé"
	charmap "<CONT>",    $55
	charmap "<……>",      $56 ; "……"
	charmap "<DONE>",    $57
	charmap "<PROMPT>",  $58
	charmap "<TARGET>",  $59
	charmap "<USER>",    $5a
	charmap "<PC>",      $5b ; "PC"
	charmap "<TM>",      $5c ; "TM"
	charmap "<TRAINER>", $5d ; "TRAINER"
	charmap "<ROCKET>",  $5e ; "ROCKET"
	charmap "<DEXEND>",  $5f

; Actual characters (from gfx/font/font_extra.png)

	charmap "<COLON>",   $78

	charmap "┌",         $79
	charmap "─",         $7a
	charmap "┐",         $7b
	charmap "│",         $7c
	charmap "└",         $7d
	charmap "┘",         $7e
	charmap " ",         $7f

; Actual characters (from gfx/font/font_battle_extra.png)

	charmap "<LV>",      $6e

	charmap "<BOLD_P>",  $72
	charmap "<ID>",      $73
	charmap "№",         $74

; Actual characters (from other graphics files)

	; needed for ShowPokedexDataInternal (see engine/menus/pokedex.asm)
	charmap "<m>",       $60 ; gfx/pokedex/pokedex.png
	charmap "<k>",       $61 ; gfx/pokedex/pokedex.png
	charmap "<g>",       $62 ; gfx/pokedex/pokedex.png

	charmap "<c>",       $6c
	charmap "³",         $6d
	charmap "<p>",       $6e
	charmap "<h>",       $6f
	charmap "“",         $70
	charmap "”",         $71

	charmap "₂",         $73
	charmap "º",         $74

	; needed for PrintAlphabet (see engine/menus/naming_screen.asm)
	charmap "<ED>",      $c4 ; gfx/font/nickname_screen.1bpp

; Actual characters (from gfx/font/font.png)

	charmap "A",         $80
	charmap "B",         $81
	charmap "C",         $82
	charmap "D",         $83
	charmap "E",         $84
	charmap "F",         $85
	charmap "G",         $86
	charmap "H",         $87
	charmap "I",         $88
	charmap "J",         $89
	charmap "K",         $8a
	charmap "L",         $8b
	charmap "M",         $8c
	charmap "N",         $8d
	charmap "O",         $8e
	charmap "P",         $8f
	charmap "Q",         $90
	charmap "R",         $91
	charmap "S",         $92
	charmap "T",         $93
	charmap "U",         $94
	charmap "V",         $95
	charmap "W",         $96
	charmap "X",         $97
	charmap "Y",         $98
	charmap "Z",         $99

	charmap "a",         $9a
	charmap "b",         $9b
	charmap "c",         $9c
	charmap "d",         $9d
	charmap "e",         $9e
	charmap "f",         $9f
	charmap "g",         $a0
	charmap "h",         $a1
	charmap "i",         $a2
	charmap "j",         $a3
	charmap "k",         $a4
	charmap "l",         $a5
	charmap "m",         $a6
	charmap "n",         $a7
	charmap "o",         $a8
	charmap "p",         $a9
	charmap "q",         $aa
	charmap "r",         $ab
	charmap "s",         $ac
	charmap "t",         $ad
	charmap "u",         $ae
	charmap "v",         $af
	charmap "w",         $b0
	charmap "x",         $b1
	charmap "y",         $b2
	charmap "z",         $b3

	charmap "á",         $b4
	charmap "é",         $b5
	charmap "í",         $b6
	charmap "ó",         $b7
	charmap "ú",         $b8

	charmap "â",         $b9
	charmap "ê",         $ba
	charmap "î",         $bb
	charmap "ô",         $bc
	charmap "û",         $bd

	charmap "ã",         $be
	charmap "õ",         $bf

	charmap "<c'>",      $c0
	charmap "<d'>",      $c1
	charmap "<j'>",      $c2
	charmap "<l'>",      $c3
	charmap "<m'>",      $c4
	charmap "<n'>",      $c5
	charmap "<p'>",      $c6
	charmap "<s'>",      $c7
	charmap "<t'>",      $c8
	charmap "<u'>",      $c9
	charmap "<y'>",      $ca

	charmap "²",         $cb

	charmap "&",         $cc

	charmap "▷",         $cd
	charmap "▶",         $ce
	charmap "▼",         $cf

	charmap "à",         $d0
	charmap "è",         $d1
	charmap "ì",         $d2
	charmap "ò",         $d3
	charmap "ù",         $d4

	charmap "ä",         $d5
	charmap "ë",         $d6
	charmap "ï",         $d7
	charmap "ö",         $d8
	charmap "ü",         $d9

	charmap "ç",         $da

	charmap "ñ",         $db

	charmap "ß",         $dc

	charmap ":",         $dd

	charmap "♀",         $de
	charmap "♂",         $df

	charmap "'d",        $e0
	charmap "'l",        $e1
	charmap "'m",        $e2
	charmap "'r",        $e3
	charmap "'s",        $e4
	charmap "'t",        $e5
	charmap "'v",        $e6

	charmap "(",         $e7
	charmap ")",         $e8

	charmap "-",         $e9

	charmap "<PK>",      $ea
	charmap "<MN>",      $eb

	charmap "<PEGADO>",  $ec

	charmap "<SHINY>",   $ed

	charmap "?",         $ee
	charmap "!",         $ef

	charmap "¥",         $f0
	charmap "×",         $f1
	charmap ".",         $f2
	charmap "/",         $f3
	charmap "'",         $f4
	charmap ",",         $f5

	charmap "0",         $f6
	charmap "1",         $f7
	charmap "2",         $f8
	charmap "3",         $f9
	charmap "4",         $fa
	charmap "5",         $fb
	charmap "6",         $fc
	charmap "7",         $fd
	charmap "8",         $fe
	charmap "9",         $ff

	charmap "<yu1>",      $08
	charmap "<yu2>",      $09
	charmap "<yu3>",      $44
	charmap "<yu4>",      $45
	charmap "<ha1>",      $40
	charmap "<ha2>",      $3c
	charmap "<kusho1>",   $2d
	charmap "<kusho2>",   $01

	charmap "<yu5>",      $0a
	charmap "<yu6>",      $0d
	charmap "<yu7>",      $0e
	charmap "<yu8>",      $41
	charmap "<ha3>",      $3d
	charmap "<ha4>",      $0c
	charmap "<kusho3>",   $02
	charmap "<kusho4>",   $2c
