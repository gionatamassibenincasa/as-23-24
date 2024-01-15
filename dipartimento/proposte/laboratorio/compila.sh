#!/bin/bash
#cut -f1-6 distinta_base_completa.tsv > distinta_lab_stem.tsv
asciidoctor-pdf -v -a pdf-theme=sb -a pdf-themesdir=risorse/temi  -a optimize=print -r asciidoctor-diagram $1
