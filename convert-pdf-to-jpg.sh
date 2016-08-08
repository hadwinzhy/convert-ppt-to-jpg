#!/bin/bash

path=${1}

mkdir -p converted_jpg

##################### ppt & pptx #####################

if [[ "$path" == *"ppt"* ]]; then
  soffice --headless --convert-to pdf $path --outdir converted_jpg/
  cd converted_jpg
  convert *.pdf $path".jpg"
  rm -rf *.pdf
  cd -
fi

####################### keynote ######################

if [[ "$path" == *"key"* ]]; then
   echo 'wait for keynote'
fi

echo 'please check folder converted_jpg'
