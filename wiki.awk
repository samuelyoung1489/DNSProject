BEGIN{
  ttl = 0
}

{
  ttl = $2
  if ($1 == "www.wikipedia.com.")
    print ttl
}

END{

}
