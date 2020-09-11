#!/bin/bash

appName=$(cat config.txt | awk {'print $1'})
appVersion=$(cat config.txt | awk {'print $2'})
appPort=$(cat config.txt | awk {'print $3'})
machinePort=$(cat config.txt | awk {'print $4'})
machineDns=$(cat config.txt | awk {'print $5'})

echo "appName = ${appName}"
echo "appVersion = ${appVersion}"
echo "appPort = ${appPort}"
echo "machinePort = ${machinePort}"

echo "deploying ${appName} as docker container"

docker build --tag ${appName}:${appVersion} .

docker run --name ${appName} --dns ${machineDns} -p ${machinePort}:${appPort} -itd ${appName}:${appVersion} 