BEGIN{
  ttl = 0
}

{
  ttl = $2
  if ($1 == "www.bankofamerica.com.")
    print ttl
}

END{

}
