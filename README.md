# scripts

## nautilus scripts
Wanneer je een script wilt gebruiken vanuit nautilus (rechts klikken -> scripts),
dien je het te plaatsen in de map:

`~/.local/share/nautilus/scripts/`

Er zijn twee dependencies:
- python3
- imagemagick (convert)

Nautilus injecteerd de volgende variabelen:
- NAUTILUS_SCRIPT_SELECTED_FILE_PATHS: newline-delimited paths for selected files (only if local)
- NAUTILUS_SCRIPT_SELECTED_URIS: newline-delimited URIs for selected files
- NAUTILUS_SCRIPT_CURRENT_URI: current location
- NAUTILUS_SCRIPT_WINDOW_GEOMETRY position and size of current window 

referentie:
- https://fedoramagazine.org/integrating-scripts-nautilus/

## add_watermark
Dit script voegt aan plaatjes een watermerk toe: www.baukjemaakthet.nl

