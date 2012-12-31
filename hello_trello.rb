require 'trello'

include Trello
include Trello::Authorization

public_key = 'b6265a25fc2dd246ae3fe7794c95f94c'
secret_key = '7cbf5bebbae50b859b1d7481e41e4eef5464f9b3b277d0157962908854a7c1ec'
access_token_key = 'fdb897bd3b055a6dd5bd19969265e4244ebfe1d802bb1d95b185a2f48034b06a'

Trello::Authorization.const_set :AuthPolicy, OAuthPolicy

OAuthPolicy.consumer_credential = OAuthCredential.new public_key, secret_key
OAuthPolicy.token = OAuthCredential.new access_token_key, nil

me = Member.find("me")
puts me.full_name
puts me.username
puts me.bio

#board = Board.create(:name => "ruby_trello_test")
#if board.has_lists?
#  list = board.lists.first
#else
#  list = List.create(:name => "Getting Stuff Done", :board_id => board.id)
#end
#Card.create(:name => "hello trello", :description => "first card", :list_id => list.id)
