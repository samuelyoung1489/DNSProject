BEGIN {
	count = 0
}

{
	if ($9 == "0,")
		count++
	if ($8 == "ANSWER:" && $9 != "0," && count != 0) {
		print count
		count = 0
	}
}

END {

}
