#returns an array of previous titles history
def get_all_historical_titles(title_number)
  title_history_list = get_all_history(title_number)
  title_version_history = Array.new
  for i in 0..(title_history_list["meta"]["version_id"].to_i)-1 do
    title_version_history[i] = get_history_version($regData['title_number'], i+1)
  end

  ## Function Meta Data Generator
  if ($PERFROMANCETEST.nil?) then
    $function_call_name << 'get_all_historical_titles'
    $function_call_data << title_version_history
    $function_call_arguments << {}
    method(__method__).parameters.each do |key, value| $function_call_arguments[$function_call_arguments.count - 1][value.to_s] = decode_value(eval(value.to_s)) end
  end
  ## End Meta Data

  return title_version_history
end

#returns the hash to fake a historical title
def create_historical_data(regData)
  historical_regData = regData
  historical_regData['proprietorship']['fields']['proprietors'][0]['name']['full_name'] = fullName()
  historical_regData['edition_date'] = DateTime.now.strftime('%d.%m.%Y %H:%M:%S')

  ## Function Meta Data Generator
  if ($PERFROMANCETEST.nil?) then
    $function_call_name << 'create_historical_data'
    $function_call_data << historical_regData
    $function_call_arguments << {}
    method(__method__).parameters.each do |key, value| $function_call_arguments[$function_call_arguments.count - 1][value.to_s] = decode_value(eval(value.to_s)) end
  end
  ## End Meta Data

  return historical_regData
end

def create_base_register(table = nil)
  structuredData = false

  if (!table.nil?) then
    data_characteristics, data_characteristics_types = format_data_characteristics(table)
  else
    data_characteristics = {}
    data_characteristics_types = {}
  end

  regData = Hash.new()
  regData['title_number'] = titleNumber()
  regData['class_of_title'] = "Absolute"
  regData['tenure'] = "Freehold"
  regData['edition_date'] = DateTime.now.strftime('%Y-%m-%d')
  #regData['last_application'] = DateTime.now.strftime('%FT%T%:z')
  regData['last_application'] = "2014-02-20T09:03:10.000+01:00"

  regData['proprietorship'] = Hash.new()
  regData['proprietorship']['template'] = "PROPRIETOR(S): *RP*"
  regData['proprietorship']['full_text'] = "PROPRIETOR(S): Michael Jones of 8 Miller Way, Plymouth, Devon, PL6 8UQ"
  regData['proprietorship']['fields'] = Hash.new()
  regData['proprietorship']['deeds'] = Array.new()
  regData['proprietorship']['notes'] = Array.new()

  regData['property_description'] = Hash.new()
  regData['property_description']['template'] = 'The Freehold land shown edged with red on the plan of the above Title filed at the Registry and being *AD*'
  regData['property_description']['full_text'] = "The Freehold land shown edged with red on the plan of the above Title filed at the Registry and being 8 Miller Way, Plymouth, Devon, PL6 8UQ"
  regData['property_description']['fields'] = Hash.new()
  regData['property_description']['fields']['tenure'] = "Freehold"
  regData['property_description']['fields'].merge!(generate_address('United Kingdom', false))
  regData['property_description']['deeds'] = Array.new()
  regData['property_description']['notes'] = Array.new()

  regData['extent'] = Hash.new()

  if (count_characteristic_types(data_characteristics, 'polygon') > 0) then
    regData['extent'].merge!(genenerate_title_extent2(data_characteristics))
  else
    regData['extent'].merge!(genenerate_title_extent2({'has a polygon' => true}))
  end

  regData['restrictive_covenants'] = Array.new()
  regData['restrictive_covenants'][0] = Hash.new()
  regData['restrictive_covenants'][0]['template'] = ""
  regData['restrictive_covenants'][0]['full_text'] = ""
  regData['restrictive_covenants'][0]['fields'] = Hash.new()
  regData['restrictive_covenants'][0]['deeds'] = Array.new()
  regData['restrictive_covenants'][0]['notes'] = Array.new()

  regData['restrictions'] = Array.new()
  regData['restrictions'][0] = Hash.new()
  regData['restrictions'][0]['template'] = ""
  regData['restrictions'][0]['full_text'] = ""
  regData['restrictions'][0]['fields'] = Hash.new()
  regData['restrictions'][0]['fields']['miscellaneous'] = ""
  regData['restrictions'][0]['deeds'] = Array.new()
  regData['restrictions'][0]['notes'] = Array.new()

  regData['bankruptcy'] = Array.new()
  regData['bankruptcy'][0] = Hash.new()
  regData['bankruptcy'][0]['template'] = ""
  regData['bankruptcy'][0]['full_text'] = ""
  regData['bankruptcy'][0]['fields'] = Hash.new()
  regData['bankruptcy'][0]['deeds'] = Array.new()
  regData['bankruptcy'][0]['notes'] = Array.new()

  regData['easements'] = Array.new()
  regData['easements'][0] = Hash.new()
  regData['easements'][0]['template'] = ""
  regData['easements'][0]['full_text'] = ""
  regData['easements'][0]['fields'] = Hash.new()
  regData['easements'][0]['deeds'] = Array.new()
  regData['easements'][0]['notes'] = Array.new()

  regData['provisions'] = Array.new()
  regData['provisions'][0] = Hash.new()
  regData['provisions'][0]['template'] = ""
  regData['provisions'][0]['full_text'] = ""
  regData['provisions'][0]['fields'] = Hash.new()
  regData['provisions'][0]['deeds'] = Array.new()
  regData['provisions'][0]['notes'] = Array.new()

  regData['price_paid'] = Hash.new()
  regData['price_paid']['template'] = "The price stated to have been paid on *DA* was *AM*."
  regData['price_paid']['full_text'] = "The price stated to have been paid on 15.11.2005 was 100000."
  regData['price_paid']['fields'] = Hash.new()
  regData['price_paid']['fields']['date'] = Array.new()
  regData['price_paid']['fields']['date'][0] = ""
  regData['price_paid']['fields']['amount'] = Array.new()
  regData['price_paid']['fields']['amount'][0] = ""
  regData['price_paid']['deeds'] = Array.new()
  regData['price_paid']['notes'] = Array.new()

  regData['charges'] = Array.new()
  regData['charges'][0] = Hash.new()
  regData['charges'][0]['template'] = ""
  regData['charges'][0]['full_text'] = ""
  regData['charges'][0]['fields'] = Hash.new()
  regData['charges'][0]['deeds'] = Array.new()
  regData['charges'][0]['notes'] = Array.new()

  regData['other'] = Array.new()
  regData['other'][0] = Hash.new()
  regData['other'][0]['template'] = ""
  regData['other'][0]['full_text'] = ""
  regData['other'][0]['fields'] = Hash.new()
  regData['other'][0]['deeds'] = Array.new()
  regData['other'][0]['notes'] = Array.new()

  regData['h_schedule'] = Hash.new()
  regData['h_schedule']['template'] = ""
  regData['h_schedule']['full_text'] = ""
  regData['h_schedule']['fields'] = Hash.new()
  regData['h_schedule']['deeds'] = Array.new()
  regData['h_schedule']['notes'] = Array.new()

  regData = add_proprietors(regData, 1, structuredData)
  regData = add_price_paid(regData)

  if data_characteristics['restictive covenants'] then
    regData = add_restrictive_covenants(regData)
  end
  if  data_characteristics['bankruptcy notice'] then
    regData = add_bankruptcy(regData)
  end
  if data_characteristics['easement'] then
    regData = add_easement(regData)
  end
  if data_characteristics['provision'] then
    regData = add_provision(regData)
  end
  if data_characteristics['price paid'] then
    regData = add_price_paid(regData)
  end
  if data_characteristics['restriction'] then
    regData = add_restriction(regData)
  end
  if data_characteristics['charge'] then
    regData = add_charge(regData)
  end
  if data_characteristics['other'] then
    regData = add_other(regData)
  end


  puts 'xxxxx'
  puts regData.to_json
  uri = URI.parse($MINT_API_DOMAIN)
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new('/titles/' + regData['title_number'],  initheader = {'Content-Type' =>'application/json'})
  request.basic_auth $http_auth_name, $http_auth_password
  request.body = regData.to_json
  response = http.request(request)

  wait_for_register_to_be_created(regData['title_number'])

  ## Function Meta Data Generator
  if ($PERFROMANCETEST.nil?) then
    $function_call_name << 'create_base_register'
    $function_call_data << regData
    $function_call_arguments << {}
    method(__method__).parameters.each do |key, value| $function_call_arguments[$function_call_arguments.count - 1][value.to_s] = decode_value(eval(value.to_s)) end
  end
  ## End Meta Data

  return regData

end

def add_restrictive_covenants(regData)
  regData['restrictive_covenants'][0]['template'] = "By an Order of the Upper Tribunal (Lands Chamber) dated *DA* made pursuant to Section 84 of the Law of Property Act 1925 the restrictive covenants contained in the *DT**DE* dated *DD* referred to above were released. *N< NOTE: Copy Order filed>N*."
  regData['restrictive_covenants'][0]['full_text'] = "By an Order of the Upper Tribunal (Lands Chamber) dated 14/06/2013 made pursuant to Section 84 of the Law of Property Act 1925 the restrictive covenants contained in the Conveyance dated 01.06.1996 referred to above were released. NOTE: Copy Order filed"
  return regData
end

def add_restriction(regData)
  regData['restrictions'][0]['template'] = "RESTRICTION: No disposition by the proprietor of the registered estate or in exercise of the power of sale or leasing in any registered charge (except an exempt disposal as defined by section 81(8) of the Housing Act 1988) is to be registered without the consent of - (a) in relation to a disposal of land in England by a private registered provider of social housing, the Regulator of Social Housing, (b) in relation to any other disposal of land in England, the Secretary of State, and (c) in relation to a disposal of land in Wales, the Welsh Ministers, to that disposition under *M<>M*."
  regData['restrictions'][0]['full_text'] = "RESTRICTION: No disposition by the proprietor of the registered estate or in exercise of the power of sale or leasing in any registered charge (except an exempt disposal as defined by section 81(8) of the Housing Act 1988) is to be registered without the consent of - (a) in relation to a disposal of land in England by a private registered provider of social housing, the Regulator of Social Housing, (b) in relation to any other disposal of land in England, the Secretary of State, and (c) in relation to a disposal of land in Wales, the Welsh Ministers, to that disposition under section 133 of that Act."
  regData['restrictions'][0]['fields']['miscellaneous'] = "section 133 of that Act"
  return regData
end

def add_bankruptcy(regData)
  regData['bankruptcy'][0]['template'] = "BANKRUPTCY NOTICE entered under section 86(2) of the Land Registration Act 2002 in respect of a pending action, as the title of the proprietor of the registered estate appears to be affected by a petition in bankruptcy against *NM* presented in the *M<>M* Court (Court Reference Number *M<>M*) (Land Charges Reference Number PA*M<>M*)."
  regData['bankruptcy'][0]['full_text'] = "BANKRUPTCY NOTICE entered under section 86(2) of the Land Registration Act 2002 in respect of a pending action, as the title of the proprietor of the registered estate appears to be affected by a petition in bankruptcy against James Lock presented in the Gloucester County Court (Court Reference Number 124578) (Land Charges Reference Number PA102)."
  return regData
end

def add_easement(regData)
  #to generate an easement - genenerate_title_easement2($regData['extent'], {'has a polygon with easement' => true})
  regData['easements'][0]['template'] = "The land *E<>E* is subject to the rights granted by a *DT**DE* dated *DD* made between *DP*. The said Deed also contains restrictive covenants by the grantor. *N<^NOTE: Copy in Certificate. Copy filed>N*."
  regData['easements'][0]['full_text'] = "The land tinted pink is subject to the rights granted by a Deed dated 03.03.1976 made between Mr Michael Jones and Mr Jeff Smith. The said Deed also contains restrictive covenants by the grantor. NOTE: Copy filed."
  return regData
end

def add_provision(regData)
  regData['provisions'][0]['template'] = "A *DT**DE* dated *DD* made between *DP* contains the following provision:-*VT*"
  regData['provisions'][0]['full_text'] = "A Transfer of the land in this title dated 01.06.1996 made between Mr Michael Jones and Mr Jeff Smith contains the following provision:-The land has the benefit of a right of way along the passageway to the rear of the property, and also a right of way on foot only on to the open ground on the north west boundary of the land in this title"
  return regData
end

def add_price_paid(regData)
  regData['price_paid']['template'] = "The price stated to have been paid on *DA* was *AM*."
  regData['price_paid']['full_text'] = "The price stated to have been paid on 15.11.2005 was 100000."
  regData['price_paid']['fields']['date'][0] = dateInThePast().strftime("%d/%m/%Y")
  regData['price_paid']['fields']['amount'][0] = pricePaid()
  return regData
end

def add_charge(regData)
  regData['charges'][0]['template'] = "CHARGE"
  regData['charges'][0]['full_text'] = "CHARGE full text"
  return regData
end

def add_other(regData)
  regData['other'][0]['template'] = "OTHER"
  regData['other'][0]['full_text'] = "OTHER full text"
  regData
end

def add_proprietors(regData, number, structuredData)
  if regData['proprietorship']['fields']['proprietors'].nil?
    regData['proprietorship']['fields']['proprietors'] = Array.new()
  end
  for i in 0..number - 1
    regData['proprietorship']['fields']['proprietors'][i] = Hash.new()
    regData['proprietorship']['fields']['proprietors'][i]['name'] = Hash.new()
    regData['proprietorship']['fields']['proprietors'][i]['name']['title'] = "Mrs"
    regData['proprietorship']['fields']['proprietors'][i]['name']['full_name'] = fullName()
    regData['proprietorship']['fields']['proprietors'][i]['name']['decoration'] = ""
    regData['proprietorship']['fields']['proprietors'][i].merge!(generate_address(countryName(), structuredData))
  end
  return regData
end

def generate_address(country, structuredData)
  house_no = houseNumber().to_s
  street_name = roadName()
  town = townName()
  postal_county = 'Greater London'
  region_name = 'Essex'
  country = country
  postcode = postcode()
  address = Hash.new()
  address['addresses'] = Array.new()
  address['addresses'][0] = Hash.new()
  address['addresses'][0]['full_address'] = "#{house_no} #{street_name}, #{town}, #{postal_county}, #{region_name}, #{country}, #{postcode}"
  address['addresses'][0]['house_no'] = ''
  address['addresses'][0]['street_name'] = ''
  address['addresses'][0]['town'] = ''
  address['addresses'][0]['postal_county'] = ''
  address['addresses'][0]['region_name'] = ''
  address['addresses'][0]['country'] = ''
  address['addresses'][0]['postcode'] = ''
  if structuredData then
    address['addresses'][0]['house_no'] = house_no
    address['addresses'][0]['street_name'] = street_name
    address['addresses'][0]['town'] = town
    address['addresses'][0]['postal_county'] = postal_county
    address['addresses'][0]['region_name'] = region_name
    address['addresses'][0]['country'] = country
    address['addresses'][0]['postcode'] = postcode
  end
  return address
end
