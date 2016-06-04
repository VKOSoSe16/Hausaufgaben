#!/bin/bash
path=/usr/share/texlive/texmf-dist/tex/generic/hauke96/
whoami="$(whoami)"
locally=$1

if [ "$locally" = "locally" ]; then
    path=./
else
    if [ "$whoami" != "root" ]; then
        echo "This script must be executed as root!"
        exit 1
    fi
fi

download(){
    if [ "$locally" = "locally" ]; then
        wget -N -q $1 -P $path
    else
        sudo wget -N -q $1 -P $path
    fi
}

echo "DOWNLOADING NEWEST PACKAGES..."
echo ""
if [ "$locally" != "locally" ]; then
    echo -n "CREATE $path..."
    sudo mkdir -p $path
    echo "finished"
fi
echo -n "GET dadp..."
download https://raw.githubusercontent.com/hauke96/LaTeX/master/dadp.sty
echo "finished"
echo -n "GET gail..."
download https://raw.githubusercontent.com/hauke96/LaTeX/master/gail.sty
echo "finished"
echo -n "GET makrocol..."
download https://raw.githubusercontent.com/hauke96/LaTeX/master/makrocol.sty
echo "finished"
echo -n "UPDATE the lr-R file..."
sudo texhash --quiet
echo "finished"
echo ""
echo "DONE"
echo "(does not mean that everything just worked fine :P )"
echo ""
echo "You can also use \"git clone https://github.com/hauke96/LaTeX.git\" to get get everything.\n\n"
