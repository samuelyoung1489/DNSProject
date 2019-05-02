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

awk -f processing.awk googleDNS >> googleOutput.txt
awk -f processing.awk wikiDNS >> wikiOutput.txt
awk -f processing.awk facebookDNS >> facebookOutput.txt
awk -f processing.awk amazonDNS >> amazonOutput.txt
awk -f processing.awk stevensDNS >> stevensOutput.txt
awk -f processing.awk boaDNS >> boaOutput.txt
awk -f processing.awk slackDNS >> slackOutput.txt
awk -f processing.awk GroupMeDNS >> groupMeOutput.txt
awk -f processing.awk aTeamDNS >> aTeamOutput.txt
awk -f processing.awk uselessDNS >> uselessOutput.txt
