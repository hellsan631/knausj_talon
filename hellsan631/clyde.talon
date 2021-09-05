clyde boot:
  "clyde bootstrap"
clyde depends:
  "clyde deps"
clyde rings:
  "clyde rings"
clyde sink:
  "clyde sync-cassandra && clyde sync-postgres"
clyde start (basic | base) services:
  "clyde start base_services"
clyde start:
  "clyde start"
clyde reboot:
  "clyde restart"

clyde help (please | me):
  "clyde stop all && clyde stop all && clyde bootstrap && clyde bootstrap && clyde deps && clyde migrate apply && clyde rings"

clyde stop all:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "clyde stop all"
  key(enter)

clyde local voice:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "clyde start app admin voice"
  key(enter)

clyde iOS physical:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  key(cmd-k)
  "clyde ios watch prod"
  key(enter)
  # open a new window for concurrent tasks
  key(cmd-shift-d)
  "clyde ios build -p device --run"

# tasks
clyde iOS [production | prod]:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "kill $(lsof -ti:8081)"
  key(enter)
  sleep(1000ms)
  key(cmd-k)
  "clyde ios watch prod"
  key(enter)
  sleep(1000ms)
  # open a new window for concurrent tasks
  key(cmd-shift-d)
  "clyde ios build --run"

clyde ios physical:
  key(cmd-shift-d)
  "clyde ios build --run --platform device"

clyde iOS debug:
  "cd ~/Documents/GitHub/discord/discord_app"
  key(enter)
  "react-devtools"

clyde iOS local:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "kill $(lsof -ti:8081)"
  key(enter)
  sleep(1000ms)
  key(cmd-k)
  "clyde ios watch local"
  sleep(1000ms)
  key(enter)
  # open a new window for concurrent tasks
  key(cmd-shift-d)
  "clyde ios build --run"


clyde ex code:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "clyde ios gen-xcode-project --open"
  key(enter)


clyde messages:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  key(cmd-k)
  "clyde app i18n && clyde gen i18n-types"
  key(enter)

clyde android:
  "cd ~/Documents/GitHub/discord/discord_android"
  key(enter)
  "./tools/generate_assets.sh"
  key(enter)


clyde lint android:
  "cd ~/Documents/GitHub/discord/discord_android"
  key(enter)
  "./gradlew lintProductionDiscordInternalProguard"
  key(enter)

clyde lint (ios | app):
  "cd ~/Documents/GitHub/discord"
  key(enter)
  key(cmd-k)
  "clyde lint tsc"
  key(enter)


clyde app fast build:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "kill $(lsof -ti:3333)"
  key(enter)
  sleep(1000ms)
  key(cmd-k)
  "FAST_BUILD=1 clyde app build prod"
  key(enter)

clyde app [production | prod]:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "kill $(lsof -ti:3333)"
  key(enter)
  sleep(1000ms)
  key(cmd-k)
  "clyde app watch prod"
  key(enter)

clyde app local:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  "kill $(lsof -ti:3333)"
  key(enter)
  sleep(1000ms)
  key(cmd-k)
  "clyde start app admin"
  key(enter)

clyde tasks native:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  key(cmd-k)
  "clyde native dev-rtc-worker"
  key(enter)

clyde pods:
  "cd ~/Documents/GitHub/discord"
  key(enter)
  key(cmd-k)
  "clyde ios sync-pods"
  key(enter)
