require 'ldclient-rb'

client = LaunchDarkly::LDClient.new("SDK_KEY_GOES_HERE")

user = {
  key: "segment_guy",
  firstName: "Seg",
  lastName: "Ment",
  custom: {
    groups: "segment_guys"
  }
}

if client.variation("FLAG_KEY_GOES_HERE", user, false)
  # application code to show the feature
  puts "Showing your feature to #{user[:key]}"
else
  # the code to run if the feature is off
  puts "Not showing your feature to #{user[:key]}"
end

client.close()
