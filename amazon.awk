BEGIN{
  ttl = 0
}

{
  ttl = $2
  if ($1 == "www.amazon.com.")
    print ttl
}

END{

}
