defmodule Eridani.UsersService do
  @users [
    %{ :id => "1", :name => "Glen", :timezone => "PLT" },
    %{ :id => "2", :name => "Victor", :timezone => "ECT" },
    %{ :id => "3", :name => "Tore", :timezone => "ECT" },
    %{ :id => "4", :name => "Stepan", :timezone => "ECT" },
    %{ :id => "5", :name => "Tessi", :timezone => "ECT" },
    %{ :id => "6", :name => "Kramer", :timezone => "EST" },
    %{ :id => "7", :name => "James", :timezone => "EST" },
    %{ :id => "8", :name => "Vagner", :timezone => "BET" },
    %{ :id => "9", :name => "Mateus", :timezone => "BET" },
  ]

  def get_users(), do: @users
end
