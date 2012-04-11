require File.join(File.dirname(__FILE__), "ait_connect")

##Localhost
API_KEY = ''
API_SECRET = ''
##activeintime.com
ait = ActiveInTime::Base.new(API_KEY,API_SECRET) #localhost

# With activities and facility_types
#response = ait.sites.nearby(:ll => "51.5,-0.09", :facility_types => "1,2,3,4,5,35", :activity_type_categories => '1')

#Just plain long lat
#response = ait.sites.nearby(:ll => "51.5,-0.09")

#With a radius
#response = ait.sites.nearby(:ll => "51.5,-0.09", :radius => 20)

#With pagination
response = ait.sites.nearby(:ll => "51.5,-0.09", :radius => 20, :page => 1, :per_page => 1).first.fetch



##############
##
## Timetables
##
#response = ait.timetable_entries.find(response.first.timetables.first.id)
#response = response.first.timetables


#response = ait.sites.find(1)

puts response.inspect

#puts 'NOW UPDATING'

#puts response.fetch.inspect

