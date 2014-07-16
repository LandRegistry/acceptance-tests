def titleNumber()

	$prefix = [*('A'..'Z')].sample(2).join
  	$title = $prefix + $title_start
	$title_start = ($title_start.to_i + 1).to_s
	return $prefix + $title_start

end

def firstName()

	if (defined?($fname)).nil? # checks whether the array already exists
		$fname = Array.new
	end

	$fname << 'Adam'
	$fname << 'Bob'
	$fname << 'Charles'
	$fname << 'Diane'
	$fname << 'Eric'
	$fname << 'Fiona'
	$fname << 'Gareth'
	$fname << 'Helen'
	$fname << 'Ingrid'
	$fname << 'Julie'
	$fname << 'Kieran'
	$fname << 'Louise'
	$fname << 'Michael'
	$fname << 'Neil'
	$fname << 'Ola'
	$fname << 'Peter'
	$fname << 'Quincy'
	$fname << 'Rachel'
	$fname << 'Sam'
	$fname << 'Terry'
	$fname << 'Una'
	$fname << 'Vicky'
	$fname << 'Will'
	$fname << 'Xavier'
	$fname << 'Yvana'
	$fname << 'Zach'

	$fname_num = rand(0 .. 25)

	return $fname[$fname_num]

end

def surname()

	if (defined?($sname)).nil? # checks whether the array already exists
		$sname = Array.new
	end

	$sname << 'Adams'
	$sname << 'Brown'
	$sname << 'Cook'
	$sname << 'Drane'
	$sname << 'Elf'
	$sname << 'Fisher'
	$sname << 'Green'
	$sname << 'Hall'
	$sname << 'Island'
	$sname << 'Jackson'
	$sname << 'King'
	$sname << 'Large'
	$sname << 'Matthews'
	$sname << 'Neilson'
	$sname << 'Onion'
	$sname << 'Parrett'
	$sname << 'Quest'
	$sname << 'Richardson'
	$sname << 'Smith'
	$sname << 'Tibbs'
	$sname << 'Usher'
	$sname << 'Vallance'
	$sname << 'Wallis'
	$sname << 'Xavier'
	$sname << 'Yankee'
	$sname << 'Zulu'

	$sname_num = rand(0 .. 25)

	return $sname[$sname_num]

end

def postcode()

  if (defined?($pcode)).nil? # checks whether the array already exists
    $pcode = Array.new
  end

  $pcode << 'M1 1AA'
  $pcode << 'M60 1NW'
  $pcode << 'CR2 6XH'
  $pcode << 'DN55 1PT'
  $pcode << 'W1A 1HQ'
  $pcode << 'EC1A 1BB'
  $pcode << 'P2 2BB'
  $pcode << 'N70 1NX'
  $pcode << 'DS3 7YI'
  $pcode << 'EO66 2QU'
  $pcode << 'Y2B 1JR'
  $pcode << 'FD2B 2DD'

  $pcode_num = rand(0 .. 11)

  return $pcode[$pcode_num]

end
