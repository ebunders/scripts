#!/usr/bin/python3

import sys
from subprocess import call
import os

def convertImage(inFile):
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

    call([cmd], shell=True
    , stdout = sys.stdout
    , stderr = sys.stderr
    )

selectedFiles = os.environ["NAUTILUS_SCRIPT_SELECTED_FILE_PATHS"]

[convertImage(file) for file in selectedFiles.splitlines()]
