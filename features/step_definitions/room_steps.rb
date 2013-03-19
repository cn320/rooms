# Add a declarative step here for populating the DB with movies.

Given /the following rooms exist/ do |rooms_table|
  rooms_table.hashes.each do |att|
    Room.create!(att)
  end
end

Given /the following detail_rooms exist/ do |rooms_table|
  rooms_table.hashes.each do |att|
    DetailRoom.create!(att)
  end
end

Given /the following tools exist/ do |rooms_table|
  rooms_table.hashes.each do |att|
    Tool.create!(att)
  end
end
# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  #flunk "Unimplemented" # remove when done
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"


Then /I should see all the movies/ do
  # use page.body
  page.body
  rows = str_html.scan(/<tr>/).size
  rows.should == 11
  
end

Then /I fill data into the form/ do
end

Then /I specify (in)?appropriate time to reserve/ do |arg|
end

Then /I modify data/ do
end

Then /I fill reservation data and (un)?available reservation time/ do |arg|
end

Then /I should see room status/ do
end

Then /I should see all of word '(.*)'/ do |text|
  word = text.split(" ")
  word.each do |w|
    step %{I should see #{w}}
  end
end

When /I search with type:"(.*)" , amount:"(.*)" , day:"(.*)" , time:"(.*)"/ do |type,amount,day,section|
  step %{I fill in "Amount" with "#{amount}"}
  step %{I select "#{type}" from "room_type_type"}
  step %{I select "#{day}" from "day_day"}
  step %{I press "search room"}
end
