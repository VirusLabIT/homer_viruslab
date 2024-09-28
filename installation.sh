  GNU nano 7.2                                         installation.sh
if [ ! -d /homer_viruslab ]
then
    git clone https://github.com/VirusLabIT/homer_viruslab.git
fi
cd homer_viruslab
docker-compose up -d
if [ ! -d /assets ]
then
    echo "backuping /assets"
    mv /assets /assets.Backup
    mv assets /assets
else
    echo "assets not present"
    echo "creating assets"
    mv assets /assets
fi
echo "installed"
