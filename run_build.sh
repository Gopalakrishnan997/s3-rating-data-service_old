echo "Start"
sudo docker build -t s3-rating-data-service .
PS=`sudo docker ps --filter publish=8083 -q`
if [ "$PS" != "" ]
then
	echo "Stoping container --"
	sudo docker stop "$PS"
fi
echo "Staring container..."	
sudo docker run -it -d -p 8083:8083 s3-rating-data-service	
echo "End"
