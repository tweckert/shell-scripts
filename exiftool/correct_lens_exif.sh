#!/bin/sh

exiftool -overwrite_original_in_place -progress -r -ext jpg -ext tif -ext dng -P -tagsfromfile @ '-Lens<LensID' .
