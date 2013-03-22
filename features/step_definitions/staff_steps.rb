Given /the following staff exist/ do |staffs_table|
  staffs_table.hashes.each do |att|
    Staff.create!(att)
  end
end

Given /the following welcomes exist/ do |wels_table|
  wels_table.hashes.each do |att|
    Welcome.create!(att)
  end
end

When /I login with "(.*)" and "(.*)"/ do |username,password|
  step %{I am on the log in page}
  step %{I fill in "Username" with "#{username}"}
  step %{I fill in "Password" with "#{password}"}
  step %{I press "Log In"}
  
end

Then /I should see 7 days/ do
  step %{I should see "monday"}
  step %{I should see "tuesday"}
  step %{I should see "wednesday"}
  step %{I should see "thursday"}
  step %{I should see "friday"}
  step %{I should see "saturday"}
  step %{I should see "sunday"}
end



