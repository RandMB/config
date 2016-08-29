#! /bin/sh
maildirs="$HOME/.mutt/MailDir/*/Inbox/new/"
ml="$(find $maildirs -type f | wc -l)"

echo " Emails: $ml"
echo " $ml"

if [ $ml -gt 0 ]; then
	echo "#00e600"
else
	echo "#cccccc"
fi
