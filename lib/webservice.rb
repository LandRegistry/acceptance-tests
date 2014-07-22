def wait_for_register_to_be_created(title_no)
  found = false
  count = 0
  while (found == false && count < 10) do

    puts 'http://' + $PUBLICTITLE_API_DOMAIN.split(':')[0] + ':' + ($PUBLICTITLE_API_DOMAIN.split(':')[1] || '80') + '/titles/' + title_no


    http = Net::HTTP.new($PUBLICTITLE_API_DOMAIN.split(':')[0],($PUBLICTITLE_API_DOMAIN.split(':')[1] || '80'))
    request = Net::HTTP::Get.new('/titles/' + title_no,  initheader = {'Content-Type' =>'application/json'})
    request.body = $regData.to_json
    response = http.request(request)

    $json_response = JSON.parse(response.body);

    if ((response.code != '404') && ($json_response['message'].nil?)) then
        found = true
    end

    count = count + 1
    sleep(1)
  end

  if (found == false) then
    raise "No records found for title " + title_no
  end
end
