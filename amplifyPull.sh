#!/bin/bash
set -eux

AMPLIFY="{\"projectName\":\"cicdsample\",\"appId\":\"d1mcteum1ndmhc\",\"envName\":\"staging\",\"defaultEditor\":\"code\"}"
FRONTEND="{\"frontend\":\"javascript\",\"framework\":\"react\",\"config\":{\"SourceDir\":\"src/components\",\"DistributionDir\":\"build\",\"BuildCommand\":\"npm run-script build\",\"StartCommand\":\"npm run-script start\"}}"
AWSCLOUDFORMATIONCONFIG="{\"configLevel\":\"project\",\"useProfile\":true,\"profileName\":\"default\",\"region\":\"ap-northeast-1\"}"
PROVIDERS="{\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG}"

amplify pull --amplify ${AMPLIFY} --frontend ${FRONTEND} --providers ${PROVIDERS} --yes
