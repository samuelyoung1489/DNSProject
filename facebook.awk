BEGIN{
  ttl = 0
}

{
  ttl = $2
  if ($1 == "www.facebook.com.")
    print ttl
}

END{

}
