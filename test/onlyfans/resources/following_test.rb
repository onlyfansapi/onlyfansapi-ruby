# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::FollowingTest < Onlyfans::Test::ResourceTest
  def test_list_active
    skip("Mock server tests are disabled")

    response = @only_fans_api.following.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FollowingListActiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FollowingListActiveResponse::Meta | nil,
        _pagination: Onlyfans::Models::FollowingListActiveResponse::Pagination | nil,
        data: Onlyfans::Models::FollowingListActiveResponse::Data | nil
      }
    end
  end

  def test_list_all
    skip("Mock server tests are disabled")

    response = @only_fans_api.following.list_all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FollowingListAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FollowingListAllResponse::Meta | nil,
        _pagination: Onlyfans::Models::FollowingListAllResponse::Pagination | nil,
        data: Onlyfans::Models::FollowingListAllResponse::Data | nil
      }
    end
  end

  def test_list_expired
    skip("Mock server tests are disabled")

    response = @only_fans_api.following.list_expired("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FollowingListExpiredResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FollowingListExpiredResponse::Meta | nil,
        _pagination: Onlyfans::Models::FollowingListExpiredResponse::Pagination | nil,
        data: Onlyfans::Models::FollowingListExpiredResponse::Data | nil
      }
    end
  end
end
