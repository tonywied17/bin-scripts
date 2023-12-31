#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
DARK_BLUE='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'
echo -e "${GREEN}
• ▌ ▄ ·.       ▄▄▌  ▄▄▄ .▐▄• ▄ ▄▄▌ ▐ ▄▌      ▄▄▄  ▄ •▄ .▄▄ · 
·██ ▐███▪▪     ██•  ▀▄.▀· █▌█▌▪██· █▌▐█▪     ▀▄ █·█▌▄▌▪▐█ ▀. 
▐█ ▌▐▌▐█· ▄█▀▄ ██▪  ▐▀▀▪▄ ·██· ██▪▐█▐▐▌ ▄█▀▄ ▐▀▀▄ ▐▀▀▄·▄▀▀▀█▄
██ ██▌▐█▌▐█▌.▐▌▐█▌▐▌▐█▄▄▌▪▐█·█▌▐█▌██▐█▌▐█▌.▐▌▐█•█▌▐█.█▌▐█▄▪▐█
▀▀  █▪▀▀▀ ▀█▄▀▪.▀▀▀  ▀▀▀ •▀▀ ▀▀ ▀▀▀▀ ▀▪ ▀█▄▀▪.▀  ▀·▀  ▀ ▀▀▀▀ ${YELLOW}
                                           www.molexworks.com${NC}"
hostName=`uname -n`
ip=`echo $SSH_CONNECTION | awk '{print $3}'`
diskSpace=$(df -Ph | grep /dev/sda | awk '{printf "%sB / %sB, %sB Free", $3, $2, $4}')
memoryUsed=`free -t -m | grep Total | awk '{printf "%sMB / %sMB, %sMB Free", $3, $2, $4}'`
echo -e "
  ${YELLOW}Hostname/IP${NC}   $hostName / $ip
  ${YELLOW}Disk Space${NC}    $diskSpace
  ${YELLOW}Memory used${NC}   $memoryUsed"
echo -e "
${GREEN}Git Repo's${NC}
  ${DARK_BLUE}https://dev.molex.cloud/git/${NC}
  ${DARK_BLUE}https://github.com/tonywied17?tab=repositories${NC}
 
${GREEN}Server Statuses${NC}
  ${DARK_BLUE}https://server1.tonewebdesign.com${NC}
  ${DARK_BLUE}https://wamp.molex.cloud/info/${NC}


${GREEN}Global Commands${NC}

  api
    ${YELLOW}..restart${NC}   api ${BLUE}restart${NC} ${DARK_BLUE}<apiName>${NC}
    ${YELLOW}..list${NC}      api ${BLUE}list${NC}

  bot
    ${YELLOW}..prod${NC}      bot ${BLUE}prod${NC} ${DARK_BLUE}<stop/start> <botName>${NC} ${RED}<startFile>${NC}
    ${YELLOW}..dev${NC}       bot ${BLUE}dev start ${DARK_BLUE}<botName>${NC} ${RED}<startFile>${NC}
    ${YELLOW}..list${NC}      bot ${BLUE}list${NC}

  error
    ${YELLOW}..recent${NC}    error
    ${YELLOW}..amount${NC}    error ${DARK_BLUE}<lines${NC}${RED}:int${NC}${DARK_BLUE}>${NC}

  optimize
    ${YELLOW}..all${NC}       optimize

  symlinks
    ${YELLOW}..pwd${NC}       symlinks
    ${YELLOW}..dir${NC}       symlinks ${DARK_BLUE}<directory>${NC}

  system
    ${YELLOW}..info${NC}      system
"