defmodule Eridani.TimezonesService do
  @timezones [
    %{:name => "GMT", :description => "Greenwich Mean Time", :offset => 0},
    %{:name => "UTC", :description => "Universal Coordinated Time", :offset => 0},
    %{:name => "ECT", :description => "European Central Time", :offset => 1},
    %{:name => "EET", :description => "Eastern European Time", :offset => 2},
    %{:name => "ART", :description => "(Arabic) Egypt Standard Time", :offset => 2},
    %{:name => "EAT", :description => "Eastern African Time", :offset => 3},
    %{:name => "MET", :description => "Middle East Time", :offset => 3.5},
    %{:name => "NET", :description => "Near East Time", :offset => 4},
    %{:name => "PLT", :description => "Pakistan Lahore Time", :offset => 5},
    %{:name => "IST", :description => "India Standard Time", :offset => 5.5},
    %{:name => "BST", :description => "Bangladesh Standard Time", :offset => 6},
    %{:name => "VST", :description => "Vietnam Standard Time", :offset => 7},
    %{:name => "CTT", :description => "China Taiwan Time", :offset => 8},
    %{:name => "JST", :description => "Japan Standard Time", :offset => 9},
    %{:name => "JST", :description => "Australia Central Time", :offset => 9.5},
    %{:name => "AET", :description => "Australia Eastern Time", :offset => 10},
    %{:name => "SST", :description => "Solomon Standard Time", :offset => 11},
    %{:name => "NST", :description => "New Zealand Standard Time", :offset => 12},
    %{:name => "MIT", :description => "Midway Islands Time", :offset => 11},
    %{:name => "HST", :description => "Hawaii Standard Time", :offset => -10},
    %{:name => "AST", :description => "Alaska Standard Time", :offset => -9},
    %{:name => "PST", :description => "Pacific Standard Time", :offset => -8},
    %{:name => "PNT", :description => "Phoenix Standard Time", :offset => -7},
    %{:name => "MST", :description => "Mountain Standard Time", :offset => -7},
    %{:name => "CST", :description => "Central Standard Time", :offset => -6},
    %{:name => "EST", :description => "Eastern Standard Time", :offset => -5},
    %{:name => "IET", :description => "Indiana Eastern Standard Time", :offset => -5},
    %{:name => "PRT", :description => "Puerto Rico and US Virgin Islands Time", :offset => -4},
    %{:name => "CNT", :description => "	Canada Newfoundland Time", :offset => -3.5},
    %{:name => "AGT", :description => "Argentina Standard Time", :offset => -3},
    %{:name => "BET", :description => "Brazil Eastern Time", :offset => -3},
    %{:name => "CAT", :description => "Central African Time", :offset => -1}
  ]

  def get_timezones(), do: @timezones
end
