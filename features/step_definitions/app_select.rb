# Since these tests test a multitude of microservices, offer
# the ability to choose which app to test from the feature.
# (possibly do same as https://github.com/alphagov/smokey/blob/master/features/support/base_urls.rb)

Given(/^app (.*?)$/) do |app|
  case app
  when /^[Ss]ystem.*/
    @app = $SYSTEM_OF_RECORD_API_DOMAIN
  when /^[Cc]asework.*/
    @app = $CASEWORK_FRONTEND_DOMAIN
  when /^[Pp]roperty.*/
    @app = $PROPERTY_FRONTEND_DOMAIN
  when /^[Mm]int.*/
    @app = $MINT_API_DOMAIN
  when /^[Pp]ublic[- ]?[Tt]itle.*/
    @app = $PUBLICTITLE_API_DOMAIN
  when /^[Ss]earch[- ]?[Aa]pi.*/
    @app = $LR_SEARCH_API_DOMAIN
  else
    raise 'Invalid app ' + app 
  end
 
end


