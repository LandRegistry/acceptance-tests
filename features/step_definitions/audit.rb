#Audit for service frontend (when citizen logs in to view)
Then(/^Audit for private citizen register view written$/) do
  url = "https://pull.logentries.com/#{$logentries_key}/hosts/ManualHostService/lr-service-frontend/"

  match_string = getlrid("citizen@example.org")
  check_logs_for_message(url, match_string)

  match_string = $regData['title_number']
  check_logs_for_message(url, match_string)

  match_string = get_ip_address()
  check_logs_for_message(url, match_string)
end
