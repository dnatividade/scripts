#!/bin/bash

###################################################
# Rename many alphanumeric files to numeric files.
# Ex.: PATH: /home/user/Documents/*.pdf
#
# Before:
# ------
# 805345alduk.pdf
# 24aldiwo065.pdf
# rmdkwo123.pdf
# 0k1f2p3w4z5z.pdf
#
# After:
# -----
# 805345.pdf
# 24065.pdf
# 123.pdf
# 012345.pdf
###################################################

DIR="/home/user/docs_pdf/"
EXT="pdf"

cd "$DIR"

#Just numbers in filename
for file in *.$EXT
do
  #mv "$file" $(echo "$file" | sed 's/[^A-Za-z0-9_.]/_/g')
  mv "$file" $(echo "$file" | sed 's/[^0-9]//g')
done

#Restore extenssion .pdf
for file in *
do
  new_name=`echo $file | cut -d. -f1`
  mv $file $new_name.$EXT
done

exit 0
