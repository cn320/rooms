Given /the following reserves exist/ do |reserves_table|
  reserves_table.hashes.each do |att|
    Reserve.create!(att)
  end
end

Then /I should see "(.*)" and "(.*)" in reserve list/ do |t1,t2|
  step %{I should see "#{t1}"}
  step %{I should see "#{t2}"}
end



