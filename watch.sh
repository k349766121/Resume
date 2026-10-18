#!/bin/sh
set -eu
cd "$(dirname "$0")"
if [ -d /Library/TeX/texbin ]; then
    PATH="/Library/TeX/texbin:$PATH"
    export PATH
fi
exec latexmk -pvc -view=none Ken_Xinhao_Wang_Resume.tex
