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

Then /I should (not)?see all of word '(.*)'/ do |no,text|
  word = text.split(" ")
  word.each do |w|
    if no == "not"
      step %{I should #{no} see #{w}}
    else
      step %{I should see #{w}}
    end
  end
end

When /I search with type:"(.*)" , amount:"(.*)" , date:"(.*)" , time:"(.*)"/ do |type,amount,date,section|
  if date == "today"
    d = Date.today
  elsif date == "tomorrow"
    d = Date.today+1
  else
    d = Date.today-1
  end
  day = d.day.to_s
  month = d.strftime("%B")
  year = d.strftime("%G")
  step %{I fill in "Amount of people" with "#{amount}"}
  step %{I select "#{type}" from "room_type_type"}
  step %{I select "#{day}" from "date_day"}
  step %{I select "#{month}" from "date_month"}
  step %{I select "#{year}" from "date_year"}
  step %{I select "#{section}" from "section_sec"}
  step %{I press "search room"}
end

When /I search with type:"(.*)" , amount:"(.*)" , y-m-d:"(.*)" , time:"(.*)"/ do |type,amount,date,section|
  date = date.split("-")
  day = date[2]
  month = date[1]
  year = date[0]
  step %{I fill in "Amount of people" with "#{amount}"}
  step %{I select "#{type}" from "room_type_type"}
  step %{I select "#{day}" from "date_day"}
  step %{I select "#{month}" from "date_month"}
  step %{I select "#{year}" from "date_year"}
  step %{I select "#{section}" from "section_sec"}
  step %{I press "search room"}
end

When /I search in box with type:"(.*)" , amount:"(.*)" , date:"(.*)" , time:"(.*)"/ do |type,amount,date,section|
  if date == "today"
    d = Date.today
  elsif date == "tomorrow"
    d = Date.today+1
  else
    d = Date.today-1
  end
  day = d.day.to_s
  month = d.strftime("%B")
  year = d.strftime("%G")
  step %{I fill in "People to use" with "#{amount}"}
  step %{I select "#{type}" from "room_type_type_box"}
  step %{I select "#{day}" from "date_box_day"}
  step %{I select "#{month}" from "date_box_month"}
  step %{I select "#{year}" from "date_box_year"}
  step %{I select "#{section}" from "section_sec_box"}
  step %{I press "Search"}
end

When /I search in box with type:"(.*)" , amount:"(.*)" , y-m-d:"(.*)" , time:"(.*)"/ do |type,amount,date,section|
  date = date.split("-")
  day = date[2]
  month = date[1]
  year = date[0]
  step %{I fill in "People to use" with "#{amount}"}
  step %{I select "#{type}" from "room_type_type_box"}
  step %{I select "#{day}" from "date_box_day"}
  step %{I select "#{month}" from "date_box_month"}
  step %{I select "#{year}" from "date_box_year"}
  step %{I select "#{section}" from "section_sec_box"}
  step %{I press "Search"}
end

Then /I fill "(.*)" in all of tools/ do |value|
  Tool.all_tools.each do |tool|
    step %{I fill in "tool[#{tool}]" with "#{value}"}
  end
end

Then /I should see "(.*)" equal to "(.*)"/ do |text,num|
  page.body
  rows = page.body.scan(/#{text}/).size
  rows.should == num.to_i
end
