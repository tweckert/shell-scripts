#!/bin/sh

# Apple Aperture seems to use the sometimes incomplete 'Lens' meta data tag to display the lens data.
# However, some cameras store the lens information in the 'LensID' meta data tag.
# This exiftool call copies the content from the 'LensID' to the 'Lens' meta data tag.
exiftool -overwrite_original_in_place -progress -r -ext jpg -ext tif -ext dng -P -tagsfromfile @ '-Lens<LensID' .
