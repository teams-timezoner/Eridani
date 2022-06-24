# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Eridani.Repo.insert!(%Eridani.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

timezones = [
  %{name: "GMT", description: "Greenwich Mean Time", offset: 0.0},
  %{name: "UTC", description: "Universal Coordinated Time", offset: 0.0},
  %{name: "ECT", description: "European Central Time", offset: 1.0},
  %{name: "EET", description: "Eastern European Time", offset: 2.0},
  %{name: "ART", description: "(Arabic) Egypt Standard Time", offset: 2.0},
  %{name: "EAT", description: "Eastern African Time", offset: 3.0},
  %{name: "MET", description: "Middle East Time", offset: 3.5},
  %{name: "NET", description: "Near East Time", offset: 4.0},
  %{name: "PLT", description: "Pakistan Lahore Time", offset: 5.0},
  %{name: "IST", description: "India Standard Time", offset: 5.5},
  %{name: "BST", description: "Bangladesh Standard Time", offset: 6.0},
  %{name: "VST", description: "Vietnam Standard Time", offset: 7.0},
  %{name: "CTT", description: "China Taiwan Time", offset: 8.0},
  %{name: "JST", description: "Japan Standard Time", offset: 9.0},
  %{name: "ACT", description: "Australia Central Time", offset: 9.5},
  %{name: "AET", description: "Australia Eastern Time", offset: 10.0},
  %{name: "SST", description: "Solomon Standard Time", offset: 11.0},
  %{name: "NST", description: "New Zealand Standard Time", offset: 12.0},
  %{name: "MIT", description: "Midway Islands Time", offset: 11.0},
  %{name: "HST", description: "Hawaii Standard Time", offset: -10.0},
  %{name: "AST", description: "Alaska Standard Time", offset: -9.0},
  %{name: "PST", description: "Pacific Standard Time", offset: -8.0},
  %{name: "PNT", description: "Phoenix Standard Time", offset: -7.0},
  %{name: "MST", description: "Mountain Standard Time", offset: -7.0},
  %{name: "CST", description: "Central Standard Time", offset: -6.0},
  %{name: "EST", description: "Eastern Standard Time", offset: -5.0},
  %{name: "IET", description: "Indiana Eastern Standard Time", offset: -5.0},
  %{name: "PRT", description: "Puerto Rico and US Virgin Islands Time", offset: -4.0},
  %{name: "CNT", description: "	Canada Newfoundland Time", offset: -3.5},
  %{name: "AGT", description: "Argentina Standard Time", offset: -3.0},
  %{name: "BET", description: "Brazil Eastern Time", offset: -3.0},
  %{name: "CAT", description: "Central African Time", offset: -1.0}
]

timezones
  |> Enum.each(fn timezone ->
      Eridani.Repo.insert!(%Eridani.Timezone{ name: timezone.name, description: timezone.description, offset: timezone.offset })
  end
)

users = [
  %{ name: "Glen", timezone: "PLT" },
  %{ name: "Victor", timezone: "ECT" },
  %{ name: "Tore", timezone: "ECT" },
  %{ name: "Stepan", timezone: "ECT" },
  %{ name: "Tessi", timezone: "ECT" },
  %{ name: "Kramer", timezone: "EST" },
  %{ name: "James", timezone: "EST" },
  %{ name: "Vagner", timezone: "BET" },
  %{ name: "Mateus", timezone: "BET" },
]

users
 |> Enum.map(fn user ->
    id = Eridani.Repo.get_by!(Eridani.Timezone, name: user.timezone)
      |> Map.get(:id)
    %{user | timezone: id}
  end
)
 |> Enum.each(fn user -> Eridani.Repo.insert!(%Eridani.User{ name: user.name, timezone: user.timezone }) end)
