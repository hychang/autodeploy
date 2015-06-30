#!/bin/bash
 
WEB_PATH='/home/ubuntu/auto-deploy-test/'
WEB_USER='ubuntu'
WEB_USERGROUP='ubuntu'
 
echo "Start deployment"
cd $WEB_PATH
echo "pulling source code..."
git reset --hard origin/develop
git clean -f
git pull
git checkout develop
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "Finished."
