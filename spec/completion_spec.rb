require 'helper'
require 't/bash_completion'

describe T::BashCompletion::Base do
  describe "#matches" do
    context "with distinct input" do
      it "suggests 'accounts' on ac" do
        matches = T::BashCompletion::Base.new('t ac').matches
        matches.should include 'accounts'
        matches.should have(1).items
      end

      it "suggests 'authorize' on au" do
        matches = T::BashCompletion::Base.new('t au').matches
        matches.should include 'authorize'
        matches.should have(1).items
      end

      it "suggests 'block' on bl" do
        matches = T::BashCompletion::Base.new('t bl').matches
        matches.should include 'block'
        matches.should have(1).items
      end

      it "suggests 'delete' on de" do
        matches = T::BashCompletion::Base.new('t de').matches
        matches.should include 'delete'
        matches.should have(1).items
      end

      it "suggests 'direct_messages' on di" do
        matches = T::BashCompletion::Base.new('t di').matches
        matches.should include 'direct_messages'
        matches.should include 'direct_messages_sent'
        matches.should have(2).items
      end

      it "suggests 'direct_messages_sent' on direct_messages_" do
        matches = T::BashCompletion::Base.new('t direct_messages_').matches
        matches.should include 'direct_messages_sent'
        matches.should have(1).items
      end

      it "suggests 'dm' on d" do
        matches = T::BashCompletion::Base.new('t d').matches
        matches.should include 'dm'
        matches.should have(6).items
      end

      it "suggests 'does_contain' on does_c" do
        matches = T::BashCompletion::Base.new('t does_c').matches
        matches.should include 'does_contain'
        matches.should have(1).items
      end

      it "suggests 'does_follow' on does_f" do
        matches = T::BashCompletion::Base.new('t does_f').matches
        matches.should include 'does_follow'
        matches.should have(1).items
      end

      it "suggests 'favorite' on fa" do
        matches = T::BashCompletion::Base.new('t fa').matches
        matches.should include 'favorite'
        matches.should include 'favorites'
        matches.should have(2).items
      end

      it "suggests 'follow' on fo" do
        matches = T::BashCompletion::Base.new('t fo').matches
        matches.should include 'follow'
        matches.should include 'followers'
        matches.should include 'followings'
        matches.should have(3).items
      end

      it "suggests 'followers' on followe" do
        matches = T::BashCompletion::Base.new('t followe').matches
        matches.should include 'followers'
        matches.should have(1).items
      end

      it "suggests 'followings' on followi" do
        matches = T::BashCompletion::Base.new('t followi').matches
        matches.should include 'followings'
        matches.should have(1).items
      end

      it "suggests 'friends' on fr" do
        matches = T::BashCompletion::Base.new('t fr').matches
        matches.should include 'friends'
        matches.should have(1).items
      end

      it "suggests 'groupies' on g" do
        matches = T::BashCompletion::Base.new('t g').matches
        matches.should include 'groupies'
        matches.should have(1).items
      end

      it "suggests 'help' on h" do
        matches = T::BashCompletion::Base.new('t h').matches
        matches.should include 'help'
        matches.should have(1).items
      end

      it "suggests 'leaders' on le" do
        matches = T::BashCompletion::Base.new('t le').matches
        matches.should include 'leaders'
        matches.should have(1).items
      end

      it "suggests 'list' on li" do
        matches = T::BashCompletion::Base.new('t li').matches
        matches.should include 'list'
        matches.should include 'lists'
        matches.should have(2).items
      end

      it "suggests 'matrix' on ma" do
        matches = T::BashCompletion::Base.new('t ma').matches
        matches.should include 'matrix'
        matches.should have(1).items
      end

      it "suggests 'mentions' on me" do
        matches = T::BashCompletion::Base.new('t me').matches
        matches.should include 'mentions'
        matches.should have(1).items
      end

      it "suggests 'open' on o" do
        matches = T::BashCompletion::Base.new('t o').matches
        matches.should include 'open'
        matches.should have(1).items
      end

      it "suggests 'rate_limit' on ra" do
        matches = T::BashCompletion::Base.new('t ra').matches
        matches.should include 'rate_limit'
        matches.should have(1).items
      end

      it "suggests 'reply' on repl" do
        matches = T::BashCompletion::Base.new('t repl').matches
        matches.should include 'reply'
        matches.should have(1).items
      end

      it "suggests 'report_spam' on repo" do
        matches = T::BashCompletion::Base.new('t repo').matches
        matches.should include 'report_spam'
        matches.should have(1).items
      end

      it "suggests 'retweet' on ret" do
        matches = T::BashCompletion::Base.new('t ret').matches
        matches.should include 'retweet'
        matches.should include 'retweets'
        matches.should have(2).items
      end

      it "suggests 'ruler' on ru" do
        matches = T::BashCompletion::Base.new('t ru').matches
        matches.should include 'ruler'
        matches.should have(1).items
      end

      it "suggests 'search' on sea" do
        matches = T::BashCompletion::Base.new('t sea').matches
        matches.should include 'search'
        matches.should have(1).items
      end

      it "suggests 'set' on se" do
        matches = T::BashCompletion::Base.new('t se').matches
        matches.should include 'set'
        matches.should have(2).items
      end

      it "suggests 'status' on sta" do
        matches = T::BashCompletion::Base.new('t sta').matches
        matches.should include 'status'
        matches.should have(1).items
      end

      it "suggests 'stream' on str" do
        matches = T::BashCompletion::Base.new('t str').matches
        matches.should include 'stream'
        matches.should have(1).items
      end

      it "suggests 'suggest' on su" do
        matches = T::BashCompletion::Base.new('t su').matches
        matches.should include 'suggest'
        matches.should have(1).items
      end

      it "suggests 'timeline' on ti" do
        matches = T::BashCompletion::Base.new('t ti').matches
        matches.should include 'timeline'
        matches.should have(1).items
      end

      it "suggests 'trends' on tr" do
        matches = T::BashCompletion::Base.new('t tr').matches
        matches.should include 'trends'
        matches.should include 'trend_locations'
        matches.should have(2).items
      end

      it "suggests 'trend_locations' on trend_l" do
        matches = T::BashCompletion::Base.new('t trend_l').matches
        matches.should include 'trend_locations'
        matches.should have(1).items
      end

      it "suggests 'unfollow' on un" do
        matches = T::BashCompletion::Base.new('t un').matches
        matches.should include 'unfollow'
        matches.should have(1).items
      end

      it "suggests 'update' on up" do
        matches = T::BashCompletion::Base.new('t up').matches
        matches.should include 'update'
        matches.should have(1).items
      end

      it "suggests 'users' on us" do
        matches = T::BashCompletion::Base.new('t us').matches
        matches.should include 'users'
        matches.should have(1).items
      end

      it "suggests 'version' on v" do
        matches = T::BashCompletion::Base.new('t v').matches
        matches.should include 'version'
        matches.should have(1).items
      end

      it "suggests 'whois' on w" do
        matches = T::BashCompletion::Base.new('t w').matches
        matches.should include 'whois'
        matches.should have(1).items
      end
    end

    context "with ambiguous input" do
      it "suggests 'accounts' and 'authorize' commands when triggered with 'a'" do
        matches = T::BashCompletion::Base.new('t a').matches

        matches.should include 'accounts'
        matches.should include 'authorize'
      end

      it "suggests 'direct_messages' and 'direct_messages_sent' commands, but not 'delete' or 'dm', when triggered with 'di'" do
        matches = T::BashCompletion::Base.new('t di').matches

        matches.should include 'direct_messages'
        matches.should include 'direct_messages_sent'
        matches.should_not include 'delete'
        matches.should_not include 'dm'
      end
    end

    describe "for dm" do
      before do
        stub_get("/1/followers/ids.json").
          with(:query => {:cursor => "-1"}).
          to_return(:body => fixture("followers_ids.json"), :headers => {:content_type => "application/json; charset=utf-8"})
        stub_get("/1/users/lookup.json").
          with(:query => {:user_id => "213747670,428004849"}).
          to_return(:body => fixture("users.json"), :headers => {:content_type => "application/json; charset=utf-8"})
      end

      it "suggests followers, but not leaders, as receipient of a direct message" do
        matches = T::BashCompletion::Base.new('t dm').matches

        matches.should include 'sferik'
        matches.should_not include 'nerab'
      end
    end

    describe "for follow" do
      before do
        stub_get("/1/account/verify_credentials.json").
          to_return(:body => fixture("sferik.json"), :headers => {:content_type => "application/json; charset=utf-8"})
        stub_get("/1/users/recommendations.json").
          with(:query => {:limit => "20", :screen_name => "sferik"}).
          to_return(:body => fixture("recommendations.json"), :headers => {:content_type => "application/json; charset=utf-8"})
      end
      it "suggests new people to follow from Twitter's recommendations" do
        matches = T::BashCompletion::Base.new('t follow').matches

        matches.should have(5).items
        matches.should include 'antpires'
        matches.should_not include 'nerab'
      end
    end
  end
end
