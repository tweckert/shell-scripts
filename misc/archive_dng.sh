#!/bin/sh

echo "Moving fixed DNG's..."
mkdir fixed
mv *_CF.DNG fixed/

echo "Moving original DNG's..."
mkdir original
mv *.DNG original/

cd original/

for f in *.DNG; do 
echo "Archiving $f..."
base=`basename $f .DNG`
zip -j $base.zip $f
rm $f
done

cd ..

#echo "Moving JPEG's..."
#mkdir preview
#mv *.JPG preview/

echo "Finished!"