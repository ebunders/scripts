#!/usr/bin/python3

import sys
from subprocess import call

# print 'Number of arguments:', len(sys.argv), 'arguments.'
# print 'Argument List:', str(sys.argv)
inFile = sys.argv[1]
lastDot=inFile.rfind(".")
baseName = inFile[0:lastDot]
extension = inFile[lastDot:]
outFile = baseName + "_watermerk" + extension
watermark="www.baukjemaakthet.nl"

cmd = ("convert \"" + inFile + "\" "
" -gravity southwest "
" -strokewidth 2 -stroke '#000C' "
" -pointsize 20 "
" -draw 'text 25,25 \""+watermark+"\"' "
" -stroke none -fill white "
" -draw 'text 25,25 \""+watermark+"\"' \"" + outFile + "\"")

# print cmd

call([cmd], shell=True
, stdout = sys.stdout
, stderr = sys.stderr
)
