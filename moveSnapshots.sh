sSrc="/volume1/docker/Home Assistant Latest/snapshot"
cMonth=$(date +%Y-%m)
sMonth=$(date -d "$cMonth-15 last month" '+%m')
sYear=$(date -d "$cMonth-15 last month" '+%Y')
sDst="/volume1/Documents/GarageSnapshots/$sMonth-$sYear"

mkdir -p "$sDst"
find "$sSrc" -type f -name "Garage_$sMonth*.jpg" -exec mv {} $sDst \;