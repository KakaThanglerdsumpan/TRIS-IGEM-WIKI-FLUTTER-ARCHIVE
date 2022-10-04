#!/bin/sh

rm -rf ../public/*

for f in *; do
        echo $f
        cd $f
        flutter build web --web-renderer html
        rm -rf ./build/web/canvaskit
        echo -e "<script>(function () {document.write('<base href=\"' + document.location.pathname + '\" />');}());</script>\n$(cat build/web/index.html)" > build/web/index.html
        mkdir -p ../../public/$f
        rm -rf ../../public/$f
        mkdir -p ../../public/$f
        mv ./build/web/* ../../public/$f/.
done
