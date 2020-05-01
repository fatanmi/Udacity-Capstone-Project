	#!/usr/bin/env bash

    registry = 'mohmagdy1016/udacitycapstoneproject'
    sh "docker build -t ${registry} ."
	sh "docker tag ${registry} ${registry}"
	