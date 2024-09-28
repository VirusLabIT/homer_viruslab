git clone https://github.com/VirusLabIT/homer_viruslab.git
cd homer_viruslab

packagesNeeded=docker-compose-plugin
packagesNeeded2=docker
if ! [ -x "$(command -v docker)" ];
then
    curl -fsSL https://get.docker.com/ | sh
fi
if ! [ -x "$(command -v docker compose)" ];
then
    if [ -x "$(command -v apt-get)" ];
    then
        sudo apt-get install "${packagesNeeded[@]}"
    elif [ -x "$(command -v yum)" ];
    then
        sudo yum install "${packagesNeeded[@]}"
    elif [ -x "$(command -v pamac)" ];
    then
        sudo pamac install docker-compose
    else
        echo "FAILED TO INSTALL PACKAGE: You must install: "${packagesNeeded[@]}" manually and execute the script again">&2;
    fi

    if [ -d /assets ]
    then
        echo "backuping /assets"
        sudo mv /assets /assets.Backup
        sudo mv assets /assets
    else
        echo "assets not present"
        echo "creating assets"
        sudo mv assets /assets
    fi
fi

sudo chown  1000:1000 /assets

docker compose up -d
