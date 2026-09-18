#!/bin/bash
# Bruk: bash ~/ki-push-klima.sh 1.6.0
set -e
V=$1
[ -z "$V" ] && { echo "Bruk: ki-push-klima.sh 1.6.0"; exit 1; }
REPO=~/Documents/HomeAssistant/ki-klima-strom-kort
U=${V//./_}

cd ~/Downloads
ZIP=""
for k in "ki-klima-strom-kort-$V.zip" "ki-klima-strom-kort-$U.zip"; do
  [ -f "$k" ] && ZIP="$k" && break
done
[ -z "$ZIP" ] && { echo "Fant ingen ki-klima-strom-kort-$V.zip i ~/Downloads"; exit 1; }

unzip -tq "$ZIP" >/dev/null 2>&1 || { echo "$ZIP er ødelagt eller ufullstendig — last ned på nytt"; exit 1; }
rm -rf "ki-klima-strom-kort-$V" && unzip -oq "$ZIP" -d "ki-klima-strom-kort-$V"

KILDE="ki-klima-strom-kort-$V"
[ -d "$KILDE/ki-klima-strom-kort" ] && KILDE="$KILDE/ki-klima-strom-kort"
[ -f "$KILDE/ki-klima-strom-kort.js" ] || { echo "Fant ikke ki-klima-strom-kort.js i pakka"; exit 1; }

[ -d "$REPO/.git" ] || git clone -q https://github.com/SebastianKristo/ki-klima-strom-kort.git "$REPO"
cp -r "$KILDE/." "$REPO/"
cd "$REPO"
perl -pi -e "s/const KI_PRO_VERSJON = \"[^\"]*\"/const KI_PRO_VERSJON = \"$V\"/" ki-klima-strom-kort.js
git add .
git commit -m "KI Klima/Strøm-kort v$V" || true
git push origin main
git tag -f "v$V" && git push -f origin "v$V"

NOTAT=""
[ -f RELEASE.md ] && NOTAT="--notes-file RELEASE.md"
if gh release view "v$V" >/dev/null 2>&1; then
  gh release edit "v$V" $NOTAT && echo "Ferdig. Release v$V oppdatert."
else
  gh release create "v$V" --title "v$V" $NOTAT && echo "Ferdig. Release v$V opprettet."
fi
