#!/bin/bash

for i in {1..9000}
do

  dig @1.1.1.1 +norecurse www.wikipedia.com >> wikiDNS;
  dig @1.1.1.1 +norecurse www.stevens.edu >> stevensDNS;
  dig @1.1.1.1 +norecurse www.bankofamerica.com >> boaDNS;
  dig @1.1.1.1 +norecurse www.slack.com >> slackDNS;
  sleep 1;
done

awk -f processing.awk wikiDNS >> wikiOutput.txt
awk -f processing.awk stevensDNS >> stevensOutput.txt
awk -f processing.awk boaDNS >> boaOutput.txt
awk -f processing.awk slackDNS >> slackOutput.txt
