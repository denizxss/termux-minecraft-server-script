echo "This script will install the things needed for creating Minecraft server or launching existing server."
echo "This script is created by denizxs. If you're having problems with this script report on GitHub page"
sleep 2

#Installing Dependecies
while true;do
read -p "Do you want to install dependecies? (y/n)" -r yn
case "$yn" in
 [Nn]* ) exit
break;;
esac

case "$yn" in
 [Yy]* ) 

break;;
esac 
done
pkg install zlib
pkg install openjdk-17
pkg install wget

#Server Installation
while true;do
read -p "Do you want to create server? (y/n)" -r yn
case "$yn" in
 [Nn]* ) exit
break;;
esac

case "$yn" in
 [Yy]* )
break;;
esac
done

#Server Installation 2
echo "What do you want the server name to be?"
read foldername

mkdir $foldername

cd $foldername

wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar

chmod +x server.jar

java -jar server.jar

sed -i -e 's/false/true/g' eula.txt
 
echo "You can now launch server from other script and don't forget to change server settings. Have fun!"
