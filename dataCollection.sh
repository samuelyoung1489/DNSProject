#!/bin/bash

for i in {1..10}
do
  dig +norecurse www.google.com >> googleDNS;
  dig +norecurse www.wikipedia.com >> wikiDNS;
  dig +norecurse www.facebook.com >> facebookDNS;
  dig +norecurse www.amazon.com >> amazonDNS;
  dig +norecurse www.stevens.edu >> stevensDNS;
  dig +norecurse www.bankofamerica.com >> boaDNS;
  dig +norecurse www.slack.com >> slackDNS;
  dig +norecurse www.groupme.com >> GroupMeDNS;
  dig +norecurse www.ateamsystems.com >> aTeamDNS;
  dig +norecurse www.theuselessweb.com.com >> uselessDNS;
  sleep 1;
done

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
