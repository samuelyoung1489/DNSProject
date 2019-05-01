BEGIN{
  ttl = 0
}

{
  ttl = $2
  if ($1 == "www.stevens.edu.")
    print ttl
}

END{

}
