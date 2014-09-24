def generic_register_data(table = nil)

  if (!table.nil?) then
    data_characteristics, data_characteristics_types = format_data_characteristics(table)
  else
    data_characteristics = {}
    data_characteristics_types = {}
  end

  regData = Hash.new()
  regData['title_number'] = titleNumber()
  puts regData['title_number']

  regData['proprietors'] = Array.new()
  regData['proprietors'][0] = Hash.new()
  regData['proprietors'][0]['full_name'] = fullName()
  regData['proprietors'][1] = Hash.new()

  if (!data_characteristics['two proprietors'].nil?)
    regData['proprietors'][1]['full_name'] = fullName()
  else
    regData['proprietors'][1]['full_name'] = ''
  end

  regData['property'] = Hash.new()
  regData['property']['address'] = Hash.new()
  regData['property']['address']['address_line_1'] = houseNumber()
  regData['property']['address']['address_line_2'] = roadName()
  regData['property']['address']['city'] = townName()
  regData['property']['address']['postcode'] = postcode()
  regData['property']['address']['country'] = 'GB'

  regData['property']['tenure'] = genRegDetails_tenure(data_characteristics)
  regData['property']['class_of_title'] = 'absolute'

  regData['payment'] = Hash.new()
  regData['payment']['price_paid'] = pricePaid()
  regData['payment']['titles'] = Array.new()
  regData['payment']['titles'][0] = regData['title_number']

  regData = generate_lease_information(regData, data_characteristics)

  regData = generate_charge_information(regData, data_characteristics)

  regData = generate_title_extent_information(regData, data_characteristics)

  uri = URI.parse($MINT_API_DOMAIN)
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new('/titles/' + regData['title_number'],  initheader = {'Content-Type' =>'application/json'})
  request.basic_auth $http_auth_name, $http_auth_password
  request.body = regData.to_json
  response = http.request(request)

  if (response.code != '201') then
    raise "Failed creating register: " + response.body
  end

  wait_for_register_to_be_created(regData['title_number'])

  ## Function Meta Data Generator
  if ($PERFROMANCETEST.nil?) then
    $function_call_name << 'generic_register_data'
    $function_call_data << regData
    $function_call_arguments << {}
    method(__method__).parameters.each do |key, value| $function_call_arguments[$function_call_arguments.count - 1][value.to_s] = decode_value(eval(value.to_s)) end
  end
  ## End Meta Data

  return regData

end


def genRegDetails_tenure(data_characteristics)
  if (!data_characteristics['leasehold'].nil?)
    data = 'Leasehold'
  else
    data = 'Freehold'
  end

  return data

end


def generate_lease_information(regData, data_characteristics)

  if regData['property']['tenure'] =='Leasehold' then
    #build up the leasehold structure

    regData['leases'] = Array.new()
    regData['leases'][0] = Hash.new()
    regData['leases'][0]['lease_term'] = rand(7..999)

    if (!data_characteristics['has no lease clauses'].nil?)
      regData['leases'][0]['lease_easements'] = false
      regData['leases'][0]['title_registered'] = false
      regData['leases'][0]['alienation_clause'] = false
    else
      regData['leases'][0]['lease_easements'] = true
      regData['leases'][0]['title_registered'] = true
      regData['leases'][0]['alienation_clause'] = true
    end

    if (!data_characteristics['has a lessee name different to the proprietor'].nil?)
      regData['leases'][0]['lessee_name'] = fullName() + 's'
    else
      regData['leases'][0]['lessee_name'] = regData['proprietors'][0]['full_name']
    end

    regData['leases'][0]['lessor_name'] = fullName()

    regData['leases'][0]['lease_date'] = Date.today.prev_day.strftime("%Y-%m-%d")
    regData['leases'][0]['lease_from'] = Date.today.prev_day.strftime("%Y-%m-%d")

  end

  return regData
end



def generate_charge_information(regData, data_characteristics)

  if (!data_characteristics['has a charge'].nil?)

    regData['charges'] = Array.new()
    regData['charges'][0] = Hash.new()
    regData['charges'][0]['charge_date'] = '2014-08-11'
    regData['charges'][0]['chargee_address'] = '12 Test Street, London, SE1 33S'
    regData['charges'][0]['chargee_name'] = 'Test Bank'
    regData['charges'][0]['chargee_registration_number'] = '1234567'

    if (!data_characteristics['has no charge restriction'].nil?)
      regData['charges'][0]['charges-0-has_restriction'] = false
    else
      regData['charges'][0]['charges-0-has_restriction'] = true
    end

  end
  return regData
end

def generate_title_extent_information(regData, data_characteristics)

  if (count_characteristic_types(data_characteristics, 'polygon') > 1) then

    regData['extent'] = genenerate_title_extent2(data_characteristics)

    if (count_characteristic_types(data_characteristics, 'easement') > 0) then

      regData['easements'] = Array.new()
      regData['easements'] = []
      regData['easements'][0] = {}
      regData['easements'][0]['easement_geometry'] = genenerate_title_easement2(regData['extent'], data_characteristics)
      regData['easements'][0]['easement_description'] = 'Easement Description'

    end

  else
    regData['extent'] = genenerate_title_extent2({'has a polygon' => true})
  end

  return regData

end




def first_registration_data()

  data = Hash.new()
  data['titleNumber'] = titleNumber() # This title number isn't needed for the first registation tests, but is here for performance testing
  data['address_line_1'] = houseNumber()
  data['address_line_2'] = roadName()
  data['city'] = townName()
  data['postcode'] = postcode()
  data['pricePaid'] = pricePaid()
  data['fullName1'] = fullName()
  data['fullName2'] = fullName()
  data['title_extent'] = genenerate_title_extent2({'has a polygon with easement' => true})
  data['easement'] = genenerate_title_easement2(data['title_extent'], {'has a polygon with easement' => true})

  data['title_extent'] = data['title_extent'].to_json
  data['easement'] = data['easement'].to_json

  if ($PERFROMANCETEST.nil?) then
    $function_call_name << 'first_registration_data'
    $function_call_data << data
  end

  return data
end



def sample_registration()
      json = File.read('lib/dataCreation/sample_title.json')
      tn = titleNumber()
      json.gsub! 'TITLE_NUMBER_REPLACE_ME', tn
      title = JSON.parse(json).to_json

        puts title
      uri = URI.parse($MINT_API_DOMAIN)
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Post.new('/titles/' + title['title_number'],  initheader = {'Content-Type' =>'application/json'})
      request.basic_auth $http_auth_name, $http_auth_password

      request.body = title
      response = http.request(request)
end

Given(/^post a sample registration$/) do
  sample_registration()
end
