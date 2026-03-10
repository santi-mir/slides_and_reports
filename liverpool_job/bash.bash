#!/bin/bash

# Loop through all SVG files in the svg directory
for svg_file in svg/*.svg; do
    # Get the base name of the file (without path and extension)
    base_name=$(basename "$svg_file" .svg)

    # Convert SVG to PDF using Inkscape
    inkscape "$svg_file" --export-filename="pdf/$base_name.pdf"
done
