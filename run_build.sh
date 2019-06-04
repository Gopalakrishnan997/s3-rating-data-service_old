echo "Start"
PS=`sudo docker ps --filter publish=8083 -q`
#echo "$PS"
if [ "$PS" != "" ]
then
	echo "Killing container --"
	#sudo docker stop "$PS"
	sudo docker kill "$PS"
	echo "Removing Previous Image --"
	sudo docker rmi $(sudo docker images s3-rating-data-service -q)
fi
echo "Creating Image..."
sudo docker build -t s3-rating-data-service .
echo "Staring container..."	
sudo docker run -it -d -p 8083:8083 s3-rating-data-service	
echo "End"
