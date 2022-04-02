echo "This script created by denizxs, if you having a problem with this script report on https://github.com/termux-minecraft-server-script/issues"

termux-setup-storage

while true; do
read -p "Have you grant storage permisson? [Y] " -r yn
case "$yn" in
 [Yy]* )

break;; 
esac
done

pkg install zlib

pkg install openjdk-17

cd storage

cd downloads

echo "What do you want the server folder name to be?"

read foldername

mkdir $foldername

cd $foldername

echo "Put the server.jar file in the folder you created"

while true; do
read -p "Did you put server.jar file into folder? [Y]" -r yn
case "$yn" in
 [Yy]* )

break;;
esac 
done

java -jar server.jar

sed -i -e 's/false/true/g' eula.txt

java -jar server.jar
