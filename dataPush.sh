#!/bin/bash

awk -f google.awk googleDNS >> googleOutput.txt
awk -f wiki.awk wikiDNS >> wikiOutput.txt
awk -f facebook.awk facebookDNS >> facebookOutput.txt
awk -f amazon.awk amazonDNS >> amazonOutput.txt
awk -f stevens.awk stevensDNS >> stevensOutput.txt
awk -f boa.awk boaDNS >> boaOutput.txt
awk -f slack.awk slackDNS >> slackOutput.txt
awk -f groupMe.awk GroupMeDNS >> groupMeOutput.txt
awk -f aTeam.awk aTeamDNS >> aTeamOutput.txt
awk -f useless.awk uselessDNS >> uselessOutput.txt
