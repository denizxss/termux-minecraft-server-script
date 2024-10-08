echo "This script will install the things needed for creating Minecraft server or launching existing server."
echo "This script is created by denizxs. If you're having problems with this script report on GitHub page"
echo "Use this script at your own risk."
sleep 2

versions=versions.txt

#Installing Dependecies
while true;do
read -p "Do you want to install dependecies? (y/n)" -r yn
case "$yn" in
 [Nn]* ) 
break;;
esac

case "$yn" in
 [Yy]* ) pkg install openssl zlib wget openjdk-17

break;;
esac 
done

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

#Server Creation
while true; do
    echo "What do you want the server name to be?"
    read foldername

    if [ -z "$foldername" ]; then
        echo "Invalid input. Please try again."
    else
        echo "Server folder name is $foldername"
        mkdir $foldername
        break
    fi
done

#Server Version
echo "Which version do you want?"
select LINE in $(awk -F'|' '{print $1}' $versions); do
  if [ -n "$LINE" ]; then
    downloadurl=$(grep "^$LINE|" $versions | awk -F'|' '{print $2}')
    if [ -n "$downloadurl" ]; then
      break
    else
      echo "Invalid input. Please try again.."
    fi
  else
    echo "Invalid input. Please try again."
  fi
done

#Installing and Starting Server
cd $foldername

wget $downloadurl

chmod +x server.jar

java -jar server.jar

sed -i -e 's/false/true/g' eula.txt

echo "You can now launch server from other script and don't forget to change server settings. Have fun!"
