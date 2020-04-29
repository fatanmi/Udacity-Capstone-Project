## The Makefile includes instructions on environment setup ,build and  lint tests
build:
      docker build --build-arg APP_PORT=80 --tag=mohmagdy1016/fintest .

upload:
	  sh ./scripts/upload_docker.sh
