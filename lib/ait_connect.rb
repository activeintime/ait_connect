$LOAD_PATH << File.dirname(__FILE__)

require "rubygems"
require "typhoeus"
require "json"
require "cgi"
require "ait_connect/base"
# require "ait_connect/checkin_proxy"
# require "ait_connect/checkin"
# require "ait_connect/user_proxy"
# require "ait_connect/user"
require "ait_connect/site_proxy"
require "ait_connect/site"
require "ait_connect/timetable"
require "ait_connect/timetable_proxy"
require "ait_connect/timetable_entry_proxy"
require "ait_connect/timetable_entry"

require "ait_connect/term_type"
require "ait_connect/timetable_session"
require "ait_connect/instructor"
require "ait_connect/level"
require "ait_connect/timetable_session_category"
require "ait_connect/management"

require "ait_connect/facility"
require "ait_connect/facility_type"
require "ait_connect/facility_type_category"

require 'active_in_time'
