#!/bin/bash

for i in {1..9000}
do
  dig @1.1.1.1 +norecurse www.google.com >> googleDNS;
  dig @1.1.1.1 +norecurse www.wikipedia.com >> wikiDNS;
  dig @1.1.1.1 +norecurse www.facebook.com >> facebookDNS;
  dig @1.1.1.1 +norecurse www.amazon.com >> amazonDNS;
  dig @1.1.1.1 +norecurse www.stevens.edu >> stevensDNS;
  dig @1.1.1.1 +norecurse www.bankofamerica.com >> boaDNS;
  dig @1.1.1.1 +norecurse www.slack.com >> slackDNS;
  dig @1.1.1.1 +norecurse www.groupme.com >> GroupMeDNS;
  dig @1.1.1.1 +norecurse www.ateamsystems.com >> aTeamDNS;
  dig @1.1.1.1 +norecurse www.theuselessweb.com.com >> uselessDNS;
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
