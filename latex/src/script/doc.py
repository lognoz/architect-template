#!/usr/bin/env python

"""
Copyright (c) Marc-Antoine Loignon
See the file 'LICENSE' for copying permission
"""

import fileinput
from time import time
from PIL import Image, ImageOps
from pdf2image import convert_from_path


def edit_file(filename):
    """
    This function is used to edit file.
    """
    with fileinput.input(filename, inplace=1) as f:
        for line in f:
            yield line.rstrip('\n')

def convert_pdf_to_png():
    """
    This function convert pdf to a png image.
    """
    pages = convert_from_path("__filename__.pdf", 90)

    for page in pages:
        page.save("asset/__filename__.png", "PNG")

def create_mockup(image, background, timestamp):
    """
    This function create a mockup image.
    """
    width, height = image.size
    margin = round(height * 0.04)
    target = Image.new('RGB', (
        (width + (margin * 2)),
        (height + (margin * 2))
    ))

    target.paste(background)
    target.paste(image, (margin, margin))
    target.save("asset/__filename__." + str(timestamp) + ".png", quality=100)

def change_documentation(timestamp):
    """
    This function is used to change mockup in documentation.
    """
    for line in edit_file("README.md"):
        if line.startswith("[![__title__ example]"):
            print("[![__title__ example](./asset/__filename__." + str(timestamp) + ".png)](__filename__.pdf)")
        else:
            print(line)

def main():
    """
    This function is the main executor.
    """
    convert_pdf_to_png()
    image = Image.open("asset/__filename__.png")
    background = Image.open("asset/background.jpg")
    timestamp = time()
    create_mockup(image, background, timestamp)
    change_documentation(timestamp)

if __name__ == '__main__':
    main()
