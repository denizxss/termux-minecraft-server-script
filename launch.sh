echo "Write location of the server"

read foldername

cd $foldername

echo "RAM will be 1 GB by default, edit this script with nano if you want to increase or decrease."

java -Xms1024M -Xmx1024M -jar server.jar


