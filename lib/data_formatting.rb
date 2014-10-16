
##
## Dictionary of valid characteristics
## Why? - Because we want to ensure we know what the characteristics, so we don't duplicate
## Also so we have a quick look up list to know what they are about
##

$valid_characteristics = {}

## Polygon related characteristics
$valid_characteristics['polygon'] = {}
$valid_characteristics['polygon']['has a polygon with easement'] = true
$valid_characteristics['polygon']['has a polygon'] =               true
$valid_characteristics['polygon']['has a doughnut polygon'] =      true

## Easements
$valid_characteristics['easement'] = {}
$valid_characteristics['easement']['has a polygon with easement'] = true

## Core Register related characteristics
$valid_characteristics['core'] = {}
$valid_characteristics['core']['freehold'] =                    true
$valid_characteristics['core']['leasehold'] =                   true
$valid_characteristics['core']['two proprietors'] =             true
$valid_characteristics['core']['one proprietor'] =              true
$valid_characteristics['core']['restictive covenants'] =        true
$valid_characteristics['core']['bankruptcy notice'] =           true
$valid_characteristics['core']['easement'] =                    true
$valid_characteristics['core']['provision'] =                   true
$valid_characteristics['core']['price paid'] =                  true
$valid_characteristics['core']['restriction'] =                 true
$valid_characteristics['core']['charge'] =                      true
$valid_characteristics['core']['other'] =                       true

## Leasehold related characteristics
$valid_characteristics['lease'] = {}
$valid_characteristics['lease']['has no lease clauses'] =        true
$valid_characteristics['lease']['has lease clauses'] =          true
$valid_characteristics['lease']['has a lessee name different to the proprietor'] = true
$valid_characteristics['lease']['has a lessee name matching the proprietor'] =     true

## charged related characteristics
$valid_characteristics['charge'] = {}
$valid_characteristics['charge']['has a charge'] =                true
$valid_characteristics['charge']['has no charge restriction'] =   true
$valid_characteristics['charge']['has a charge restriction'] =    true

##
## How does this now work?
## On each scenario you list the characteristics of the data, this is then validated
## by the function below. If you enter an invalid characteristic then it will raise
## an exception.
##
## If all the characteristics are valid, then the function will return a hash of this values
## in the create_register.rb file this hash is called $data_characteristics
##
## An example how to use this hash is:
##
## if (!$data_characteristics['two proprietors'].nil?)
##   $regData['proprietors'][1]['full_name'] = fullName()
## else
##   $regData['proprietors'][1]['full_name'] = ''
## end


## Function to process the scenario characteristics and make them usable
def format_data_characteristics(table)

  data_characteristics = {}
  data_characteristics['types'] = {}
  data_characteristics['entities'] = {}

  if (table.to_s.empty?) then
    table = []

  elsif (!table.kind_of?(Array)) then
    table = table.raw
  end


  if (table != '')
    table.each do |value|
      if (value[0] != 'CHARACTERISTICS') then
        found = false
        $valid_characteristics.each do |charKey, charChild|

          if (!$valid_characteristics[charKey][value[0]].nil?)
            if (data_characteristics['types'][$valid_characteristics[charKey][value[0]]].nil?) then
              data_characteristics['types'][$valid_characteristics[charKey][value[0]]] = []
            end

            data_characteristics['types'][$valid_characteristics[charKey][value[0]]] << value[0]
            data_characteristics['entities'][value[0]] = true
            found = true
          end

        end
        if (found == false) then
          raise "Unexpected characteristic: " + value[0]
        end


      end
    end
  end

  return data_characteristics['entities'], data_characteristics['types']

end

def count_characteristic_types(data_characteristics, type)

  count = 0
  data_characteristics.each do |key, value|
    if (!$valid_characteristics[type][key].nil?) then
      count += 1
    end
  end
  return count;
end
