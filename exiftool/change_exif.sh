#!/bin/sh

#MAKE="Ernst Leitz Wetzlar GmbH"
MAKE="Leica Camera AG"
#MAKE="Minox"
#MAKE="Mamiya Co., Ltd."
#MAKE="Minolta Co., Ltd."
#MAKE="Canon"
#MAKE="Konica"
#MAKE="Voigtländer"
#MAKE="Plaubel"
#MAKE="Canon"

#MODEL="M4"
MODEL="MP"
#MODEL="M8 Digital Camera"
#MODEL="M9 Digital Camera"
#MODEL="Minox 35"
#MODEL="Mamiya 6"
#MODEL="Minolta CLE"
#MODEL="Canonet QL17 GIII"
#MODEL="Hexar RF"
#MODEL="Bessa III 667"
#MODEL="Makina 67"
#MODEL="Bessa R (M39)"
#MODEL="7s (M39)"
#MODEL="7 (M39)"
#MODEL="P (M39)"

# Jupiter lenses
#LENS="Jupiter-8 50mm f/2 (M39)"

# Canon lenses
#LENS="Canon 35mm f/1.5 (M39)"
#LENS="Canon 35mm f/2 (M39)"
#LENS="Canon Serenar 35mm f/2.8 (M39)"
#LENS="Canon 50mm f/1.2 (M39)"
#LENS="Canon 50mm f/1.4 (M39)"
#LENS="Canon 50mm f/1.2 (M39)"
#LENS="Canon Serenar 50mm f/1.5 (M39)"
#LENS="Canon Serenar 50mm f/1.8 (M39)"
#LENS="Canon 50mm f/0.95 (bayonet mount)"
#LENS="Canon 85mm f/1.8 (M39)"
#LENS="Canon 100mm f/3.5 (M39)"
#LENS="Canon 100mm f/2 (M39)"
#LENS="Canon 135mm f/3.5 (M39)"

# Minolta M-Rokkor lenses
#LENS="M-Rokkor 28mm f/2.8"
#LENS="M-Rokkor 40mm f/2"
#LENS="M-Rokkor 90mm f/4"

# Leica lenses
#LENS="Elmar-M 24mm f/3.8"
#LENS="Summarit 50mm f/1.5"
#LENS="Summicron-M 35mm f/2 ASPH."
#LENS="Summicron-M 35mm f/2 V1 (8 elements)"
#LENS="Summicron-M 50mm f/2 (IV, V)"
#LENS="Summilux-M 35mm f/1.4 ASPH."
#LENS="Summilux-M 50mm f/1.4 ASPH."
#LENS="Noctilux-M 50mm f/1"
#LENS="Summilux-M 75mm f/1.4"
#LENS="Elmarit-M 90mm f/2.8"
#LENS="Elmarit-M 21mm f/2.8 ASPH."

# Canonet lens
#LENS="Canonet 40mm f/1.7"

# Mamiya G lenses
#LENS="Mamiya G 50mm f/4"
#LENS="Mamiya G 75mm f/3.5"
#LENS="Mamiya G 150mm f/4.5"

# Minox 35 lens
#LENS="Color-Minotar 35mm f/2.8"

# Konica M-hexanon lenses
#LENS="M-Hexanon 28mm f/2.8"
#LENS="M-Hexanon 50mm f/2"

# Voigtländer Bessa III 667 lens
#LENS="Heliar 80mm f/3.5"

# Plaubel Makina 67 lens
#LENS="Nikkor 80mm f/2.8"

# Topcor lenses
#LENS="Topcor-S 50mm f/2 (M39)"

# Nikkor lenses
#LENS="Nikkor-S.C. 50mm f/1.4 (M39)"

# Carl Zeiss lenses
LENS="ZM Sonnar 50mm f/1.5"

#FOCALLENGTH="21mm"
#FOCALLENGTH="24mm"
#FOCALLENGTH="28mm"
#FOCALLENGTH="35mm"
#FOCALLENGTH="40mm"
FOCALLENGTH="50mm"
#FOCALLENGTH="75mm"
#FOCALLENGTH="80mm"
#FOCALLENGTH="85mm"
#FOCALLENGTH="90mm"
#FOCALLENGTH="100mm"
#FOCALLENGTH="135mm"
#FOCALLENGTH="150mm"

echo "Now changing EXIF data to '$MAKE' '$MODEL' '$LENS' '$FOCALLENGTH' in '$1'"
exiftool -overwrite_original_in_place -progress -r -ext jpg -ext tif -ext dng -make="$MAKE" -model="$MODEL" -lens="$LENS" -focallength="$FOCALLENGTH" $1