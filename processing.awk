BEGIN {
	count = 0
}

{
	if ($8 == "0,")
		count++
	if ($8 != "0," && count != 0) {
		print count
		count = 0
	}
}

END {

}
