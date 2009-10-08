require 'flickraw'

FlickRaw.api_key=FLICKR_CONFIG['key']
FlickRaw.shared_secret=FLICKR_CONFIG['secret']

frob = flickr.auth.getFrob
auth_url = FlickRaw.auth_url :frob => frob, :perms => 'read'

puts "Open this url in your process to complete the authication process : #{auth_url}"
puts "Press Enter when you are finished."
STDIN.getc

begin
  token = flickr.auth.getToken :frob => frob
  login = flickr.test.login
  puts "You are now authenticated as #{login.username}"
  puts token.token
rescue FlickRaw::FailedResponse => e
  puts "Authentication failed : #{e.msg}"
end
