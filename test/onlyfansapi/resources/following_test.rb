# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::FollowingTest < Onlyfansapi::Test::ResourceTest
  def test_list_active
    skip("Mock server tests are disabled")

    response = @onlyfansapi.following.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end

  def test_list_all
    skip("Mock server tests are disabled")

    response = @onlyfansapi.following.list_all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end

  def test_list_expired
    skip("Mock server tests are disabled")

    response = @onlyfansapi.following.list_expired("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end
end
