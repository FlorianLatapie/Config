apk update
apk upgrade

packages='nano ranger mc neofetch links curl'

for package in $packages ; do
    echo -e "\nInstall $package\n"
    apk add "$package"
done