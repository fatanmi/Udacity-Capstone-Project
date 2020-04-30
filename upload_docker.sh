     export username="mohmagdy1016"
	 export path=udacitycapstoneproject
	 export version=0.1
	 export dockerpath=$username/$path;
	imageId=$(docker images -q $dockerpath:latest)
	docker tag $imageId $dockerpath:$version
	docker push $dockerpath
