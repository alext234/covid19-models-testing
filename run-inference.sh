#!/bin/bash
FILES=$1/*
for f in $FILES
do
    echo "-------- Running inference on $f"
    python inference.py --weightspath ./ --metaname model.meta_eval --ckptname model-6207 --imagepath $f
done
