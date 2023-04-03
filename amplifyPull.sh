#!/bin/bash
set -eux

AMPLIFY="{\"projectName\":\"insurtech-knockun-app\",\"appId\":\"ddk19zql38o5c\",\"envName\":\"staging\",\"defaultEditor\":\"code\"}"
FRONTEND="{\"frontend\":\"javascript\",\"framework\":\"react\",\"config\":{\"SourceDir\":\"src/components\",\"DistributionDir\":\"build\",\"BuildCommand\":\"npm run-script build\",\"StartCommand\":\"npm run-script start\"}}"
AWSCLOUDFORMATIONCONFIG="{\"configLevel\":\"project\",\"useProfile\":true,\"profileName\":\"default\",\"region\":\"ap-northeast-1\"}"
PROVIDERS="{\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG}"

amplify pull --amplify ${AMPLIFY} --frontend ${FRONTEND} --providers ${PROVIDERS} --yes
