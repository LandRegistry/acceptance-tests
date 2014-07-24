def wait_for_register_to_be_created(title_no)
  found = false
  count = 0
  while (found == false && count < 10) do
  puts 'waiting for registration to be created'
  puts 'http://' + $LR_SEARCH_API_DOMAIN + '/search?query=' + title_no

  http = Net::HTTP.new($LR_SEARCH_API_DOMAIN)
  request = Net::HTTP::Get.new('/search?query=' + title_no,  initheader = {'Content-Type' =>'application/json'})
  request.basic_auth $http_auth_name, $http_auth_password
  response = http.request(request)

  json_response = JSON.parse(response.body);

  if ((response.code != '404') && (json_response['results'].length > 0)) then
      found = true
      puts 'registration created'
  end

  count = count + 1
  sleep(1)
end

  if (found == false) then
    raise "No records found for title " + title_no
  end
end

def get_register_by_title(title_no)

  puts 'http://' + $SYSTEM_OF_RECORD_API_DOMAIN + '/search?query=' + title_no

  http = Net::HTTP.new($SYSTEM_OF_RECORD_API_DOMAIN)
  request = Net::HTTP::Get.new('/search?query=' + title_no,  initheader = {'Content-Type' =>'application/json'})
  request.basic_auth $http_auth_name, $http_auth_password
  request.body = $regData.to_json
  response = http.request(request)

  if (response.code == '404') then
    raise "Title " + title_no + " does not exist"
  else
    json_response = JSON.parse(response.body);
    puts 'registration found'
  end

end

def does_title_exist(title_no)
  puts 'Does title exist'
  puts 'http://' + $SYSTEM_OF_RECORD_API_DOMAIN + '/search?query=' + title_no

  http = Net::HTTP.new($SYSTEM_OF_RECORD_API_DOMAIN.split(':')[0],($SYSTEM_OF_RECORD_API_DOMAIN.split(':')[1] || '80'))
  request = Net::HTTP::Get.new('/search?query=' + title_no,  initheader = {'Content-Type' =>'application/json'})
  request.basic_auth $http_auth_name, $http_auth_password
  request.body = $regData.to_json
  response = http.request(request)

  if (response.code == '404') then
    false
    puts 'Title does not exist'
  else
    true
    puts 'Title exists'
  end

end
