curl --output test.json.gz 'https://playground-api-production-v5.services.teleporthq.io/project/adored-astonishing-sandpiper-3411hz/snapshot' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.6' \
  -H 'authorization: Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjMwYjIyMWFiNjU2MTdiY2Y4N2VlMGY4NDYyZjc0ZTM2NTIyY2EyZTQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vY3JvYXBwLWRldiIsImF1ZCI6ImNyb2FwcC1kZXYiLCJhdXRoX3RpbWUiOjE3NDI5Mjc1OTEsInVzZXJfaWQiOiJMMThtZURWZ3REUFQxOGZTSmhzeFJsMnFDZnEyIiwic3ViIjoiTDE4bWVEVmd0RFBUMThmU0poc3hSbDJxQ2ZxMiIsImlhdCI6MTc0Mjk5MTY5NSwiZXhwIjoxNzQyOTk1Mjk1LCJlbWFpbCI6ImxhYnNAYmluYXJ5c3Rhci5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJsYWJzQGJpbmFyeXN0YXIuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.aE6Tw_2vvq05GXZS9RwHQlW-9tRlxSGKl1I0-oFq-pKCK5xw0l_CdKA7vTnIww-zAX2l1OYURP73jaGU7vElsJSSsu9DieW2ZgisC6Iq9utzaIE-3UFK9hKb6sJnfiKcFfoFm8eyUJFSpwTWlrtFpBDrM1StWoQKMqDH1t2cMoMzSi0R44jBED09suNVei_BfPF0SrDtONoHUZoV_9FQ97IM3-ABO5PEC-Ty9zULvvqhmD2u1swwAEDdEw_toVBswFWXD7z0AgS4ToPTZq4mp5fBZPjsH66pkKNJhRx_xVRUZaNWBrMJEBJcn1Pd6_EzRXpVex0lAjzkaDhMviiRGA' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'origin: https://play.teleporthq.io' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: https://play.teleporthq.io/' \
  -H 'sec-ch-ua: "Not(A:Brand";v="99", "Brave";v="133", "Chromium";v="133"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-gpc: 1' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'

  gunzip test.json.gz

  cat test.json | jq '.snapshot' > test.uidl.json

  rm test.json

