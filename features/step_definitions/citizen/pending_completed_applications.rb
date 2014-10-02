Given(/^pending applications exist$/) do

  $pending_cases = []

  $marriage_data = create_marriage_data('GB', $regData['proprietors'][0]['full_name'], $regData['title_number'])
  $pending_cases << create_change_of_name_marriage_request($regData, $marriage_data)
  $pending_cases[0]['regdata'] = $regData
  $pending_cases[0]['marriage_data'] = $marriage_data

  #$regData['proprietors'][0]['full_name'] = $marriage_data['proprietor_new_full_name']
  $marriage_data = create_marriage_data('GB', $regData['proprietors'][0]['full_name'], $regData['title_number'])
  $pending_cases << create_change_of_name_marriage_request($regData, $marriage_data)
  $pending_cases[1]['regdata'] = $regData
  $pending_cases[1]['marriage_data'] = $marriage_data

end

Given(/^completed applications exist$/) do

  $completed_cases = []

  ## Request No 1

  $marriage_data = create_marriage_data('GB', $regData['proprietors'][0]['full_name'], $regData['title_number'])
  $completed_cases << create_change_of_name_marriage_request($regData, $marriage_data)
  $completed_cases[0]['regdata'] = $regData
  $completed_cases[0]['marriage_data'] = $marriage_data
  sleep(2)
  complete_case($completed_cases[0]['case_id'])
  wait_for_register_to_update_full_name($regData['title_number'], $marriage_data['proprietor_new_full_name'])

  ## Request No 2
  sleep(2)
  title_no = $regData['title_number']
  $regData = get_register_details(title_no)
  $marriage_data = create_marriage_data('GB', $regData['proprietors'][0]['full_name'], $regData['title_number'])
  $completed_cases << create_change_of_name_marriage_request($regData, $marriage_data)
  $completed_cases[1]['regdata'] = $regData
  $completed_cases[1]['marriage_data'] = $marriage_data
  sleep(2)
  complete_case($completed_cases[1]['case_id'])
  wait_for_register_to_update_full_name($regData['title_number'], $marriage_data['proprietor_new_full_name'])

end

When(/^I elect to view requests$/) do
    click_link('View pending and historical changes to this title')
end

Then(/^the correct data is displayed$/) do

  #Loop through the data held on the pending applications table i.e. the cases table

    if (!$pending_cases.nil?)

      for i in 0 ..$pending_cases.count - 1

        assert_match($pending_cases[i]["title_number"], page.body, 'Expected to find '+ $pending_cases[i]["title_number"] +' displayed on the screen')
        assert_match($pending_cases[i]["submitted_by"], page.body, 'Expected to find '+ $pending_cases[i]["submitted_by"] +' displayed on the screen')

      end # of $pending_cases loop

    end  # if (!$pending_cases.nil?)


  if (!$completed_cases.nil?)

    for i in 0 ..$completed_cases.count - 1

      assert_match($completed_cases[i]["title_number"], page.body, 'Expected to find '+ $completed_cases[i]["title_number"] +' displayed on the screen')
      assert_match($completed_cases[i]["submitted_by"], page.body, 'Expected to find '+ $completed_cases[i]["submitted_by"] +' displayed on the screen')

    end  # of for i in 0 ..$completed_cases.count - 1

  end # if (!$completed_cases.nil?)

  # initialise the 2 cases arrays ready for reuse
  $pending_cases = nil # Lets Tidy up, so that another scenario doesn't resuse this data
  $completed_cases = nil # Lets Tidy up, so that another scenario doesn't resuse this data


end # of Then(/^the correct data is displayed$/)

Then(/^a list of pending requests are shown in order of receipt by date & time$/) do
  i = 0

  page.all(".//*[@id='pending']/ol[3]/li/div/ul/li[1]").each do |el|
    puts i.to_s + el.text.to_s
    assert_match($pending_cases[i]["marriage_data"]["proprietor_new_full_name"], el.text, 'Expected to find '+ $pending_cases[i]["marriage_data"]["proprietor_new_full_name"] +' displayed on the screen')
    i += 1
  end # of .each loop
end

Then(/^a separate list of completed requests are shown in order of receipt by date & time$/) do
  i = 0
  page.all(".//*[@id='previous']/ol/li/div/p").each do |el|
    assert_match($completed_cases[i]["marriage_data"]["proprietor_full_name"], el.text, 'Expected to find '+ $completed_cases[i]["marriage_data"]["proprietor_full_name"] +'')
    i += 1
  end # of .each loop
end

Then(/^a view requests option is not displayed$/) do
    assert_equal has_link?('View pending and historical changes to this title'), false, 'Expected View pending and historical changes to this title link to not be on the page'
end

Then(/^an error message re unauthorised is displayed$/) do
  assert_match('Unauthorised', page.body, 'Expected to find Unauthorised text displayed on the screen')
end

Then(/^the no pending nor completed requests screen are displayed$/) do
  assert_match('No pending changes', page.body, 'Expected to find No pending changes text displayed on the screen')
  assert_match('No previous changes', page.body, 'Expected to find No previous changes text displayed on the screen')
end
