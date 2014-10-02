def get_ip_address()
  remote_ip = open('http://whatismyip.akamai.com').read
  puts remote_ip
  return remote_ip
end

def emailAddress()
  prefix = Time.now.strftime('%Y%m%d%H%M%S%L').to_s
  domain = "@example.org"
  return prefix + domain
end

def titleNumber()
  number = rand(999999999).to_s
  prefix = "TEST"
	return prefix + number
end

def fullName()

	fname = Array.new
	fname << 'Adam Jones'
	fname << 'Bob Moore'
	fname << 'Charles Lewis'
	fname << 'Diane Pease'
	fname << 'Eric Downey'
	fname << 'Fiona Devetak'
	fname << 'Gareth Shaw'
	fname << 'Helen Wall'
	fname << 'Ingrid Jones'
	fname << 'Julie Howell'
	fname << 'Kieran Wills'
	fname << 'Louise Taylor'
	fname << 'Michael Jobnes'
	fname << 'Neil Wright'
	fname << 'Ola Harris'
	fname << 'Peter Morgan'
	fname << 'Quincy Edwards'
	fname << 'Rachel Clark'
	fname << 'Sam Thompson'
	fname << 'Terry Jackson'
	fname << 'Una Griffiths'
	fname << 'Vicky Chapman'
	fname << 'Will Wood'
	fname << 'Xavier Berry'
	fname << 'Yvana Foster'
	fname << 'Zach Dixon'

	fname_num = rand(0 .. fname.length - 1)

	return fname[fname_num]

end

def postcode()

  pcode = Array.new
  pcode << 'M1 1AA'
  pcode << 'M60 1NW'
  pcode << 'CR2 6XH'
  pcode << 'DN55 1PT'
  pcode << 'W1A 1HQ'
  pcode << 'EC1A 1BB'
  pcode << 'P2 2BB'
  pcode << 'N70 1NX'
  pcode << 'EO66 2QU'
  pcode << 'Y2B 1JR'
  pcode << 'FD2B 2DD'

  pcode_num = rand(0 .. pcode.length - 1)

  return pcode[pcode_num]

end

def houseNumber()
	return rand(1 .. 9999)
end

def roadName()

  road = Array.new
	road << 'Allgood Street'
	road << 'Bardsley Lane (part)'
	road << 'Carlton Drive'
	road << 'Derby Gate'
	road << 'Exmouth Market'
	road << 'Falconberg Mews'
	road << 'Gentian Row'
	road << 'Harrington Way'
	road << 'Iverna Court'
	road << 'Jaspar Road'
	road << 'Kingsmill Terrace'
	road << 'Leitrim Passage'
	road << 'Manor House Road'
	road << 'North End Crescent'
	road << 'Osier Place'
	road << 'Palace Gardens Terrace'
	road << 'Quick Street'
	road << 'Richmond Terrace Mews'
	road << "St. Anselm's Place"
	road << 'Trinity Church Square'
	road << 'Upper Tulse Hill'
	road << 'Victoria Rise'
	road << 'Waverley Crescent'
	road << 'Yoakley Road'
	road << 'Vauxhall Grove'
	road << 'Zealand Road'

	road_num = rand(0 .. road.length - 1)

	return road[road_num]

end

def townName()

  town = Array.new
	town << 'Abercwmboi'
	town << 'Bridgend'
	town << 'Crickhowell'
	town << "Dinnington St John's"
	town << 'East Retford'
	town << 'Fordbridge'
	town << 'Grange-over-Sands'
	town << 'Hay-on-Wye'
	town << 'Ivybridge'
	town << 'Jarrow'
	town << 'Kirkby-in-Ashfield'
	town << 'Lyme Regis'
	town << 'Malmesbury'
	town << 'Needham Market'
	town << 'Ollerton and Boughton'
	town << 'Penrith'
	town << 'Queenborough-in-Sheppey'
	town << 'Rayleigh'
	town << "St Just-in-Penwith"
	town << 'Tewkesbury'
	town << 'Upton-upon-Severn'
	town << 'Ventnor'
	town << 'Walton-on-Thames'
	town << 'Yate'
	town << 'Telford'
	town << 'Torquay'

	town_num = rand(0 .. town.length - 1)

	return town[town_num]
end

def pricePaid()
	return rand(100000 .. 9999000)
end

#function determines if single polygon or multipolygon and returns result
def genenerate_title_extent(polygons)
  if polygons == 1 then
    polydata = generate_single_extent
  else
    polydata = genenerate_multiple_extent(polygons)
  end
  return polydata
end



def dateInThePast()
  return DateTime.now - (rand(1..99))
end


def countryName()

  country = Array.new
  country << 'Finland'
  country << 'France'
  country << 'Georgia'
  country << 'Germany'
  country << 'Greece'
  country << 'Italyv'
  country << 'Monaco'
  country << 'Norway'
  country << 'Portugal'
  country << 'Ukraine'
  country << 'United Kingdom'

  country_num = rand(0 .. country.length - 1)

  return country[country_num]

end

def certificateNumber()
  return rand(1000000000..9000000000)
end
