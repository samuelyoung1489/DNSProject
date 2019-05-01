BEGIN{
  ttl = 0
}

{
  ttl = $2
  print ttl
}

END{

}
