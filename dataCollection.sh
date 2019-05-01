#!/bin/bash

for i in {1..10}
do
  dig +nocmd +noall +answer www.google.com >> googleDNS;
  dig +nocmd +noall +answer www.wikipedia.com >> wikiDNS;
  dig +nocmd +noall +answer www.facebook.com >> facebookDNS;
  dig +nocmd +noall +answer www.amazon.com >> amazonDNS;
  dig +nocmd +noall +answer www.stevens.edu >> stevensDNS;
  dig +nocmd +noall +answer www.bankofamerica.com >> boaDNS;
  dig +nocmd +noall +answer www.slack.com >> slackDNS;
  dig +nocmd +noall +answer www.groupme.com >> GroupMeDNS;
  dig +nocmd +noall +answer www.ateamsystems.com >> aTeamDNS;
  dig +nocmd +noall +answer www.theuselessweb.com.com >> uselessDNS;
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
