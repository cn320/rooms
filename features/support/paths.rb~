# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home page$/
      rooms_path
    when /^the log in page$/
      login_path
    when /^the staff page$/
      staffs_path
    when /^the new room page$/
      new_room_path
    when /^the room list page$/
      room_list_staffs_path
    when /^the "(.*)" room detail page$/
      staff_path(DetailRoom.find_by_roomname($1))
    when /^the edit room "(.*)" page/
      edit_room_path(DetailRoom.find_by_roomname($1))
    when /^the room id "(.*)" status page$/
      room_path(Room.find($1))
    when /^the room id of date:"(.*)" status page$/
      if ($1) == "today"
        d = Date.today
      elsif date == "tomorrow"
        d = Date.today+1
      else
        d = Date.today-1
      end
      room_path(Room.find(d.cwday))
    when /^the form page$/
      new_form_path
    when /^the print page$/
      form_path(Form.find(1))
    when /^the search page$/
      search_path
    when /^the search_result page$/
      search_result_path
    when /^the reserve detail page$/
      reserves_path
    when /^the reserve detail id:"(.*)" page$/
      reserf_path(Reserve.find($1))
    when /^the pic list page$/
      welcomes_path
    when /^the add new pic page$/
      new_welcome_path
    when /^the pic id "(.*)" change state page$/
      edit_welcome_path(Welcome.find($1))
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
