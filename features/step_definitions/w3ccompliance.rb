Then(/^the page is W3C compliant$/) do

  @validator = MarkupValidator.new

  results = @validator.validate_text(page.body)

  errors = ''

  if results.errors.length > 0
    results.errors.each do |err|
      errors = errors + err.to_s + "\n\r"
    end
  end

  if (!errors.empty?) then
    raise errors
  end

end
