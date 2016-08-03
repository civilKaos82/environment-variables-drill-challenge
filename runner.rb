require 'octokit'

def user_recap(user)
  <<-TEXT.gsub(/^\s+/, "")
    Your GitHub username is #{user.login}.
    You have #{user.followers} followers on GitHub.
    You are following #{user.following} users.
  TEXT
end


client = Octokit::Client.new(:access_token => ENV["GITHUB_ACCESS_TOKEN"])

user = client.user
puts user_recap(user)
