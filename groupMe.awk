BEGIN{
  ttl = 0
}

{
  ttl = $2
  if ($1 == "www.groupme.com.")
    print ttl
}

END{

}
