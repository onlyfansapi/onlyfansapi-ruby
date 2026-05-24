# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::FollowingTest < Onlyfansapi::Test::ResourceTest
  def test_list_active
    skip("Mock server tests are disabled")

    response = @only_fans_api.following.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FollowingListActiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FollowingListActiveResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FollowingListActiveResponse::Pagination | nil,
        data: Onlyfansapi::Models::FollowingListActiveResponse::Data | nil
      }
    end
  end

  def test_list_all
    skip("Mock server tests are disabled")

    response = @only_fans_api.following.list_all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FollowingListAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FollowingListAllResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FollowingListAllResponse::Pagination | nil,
        data: Onlyfansapi::Models::FollowingListAllResponse::Data | nil
      }
    end
  end

  def test_list_expired
    skip("Mock server tests are disabled")

    response = @only_fans_api.following.list_expired("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FollowingListExpiredResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FollowingListExpiredResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FollowingListExpiredResponse::Pagination | nil,
        data: Onlyfansapi::Models::FollowingListExpiredResponse::Data | nil
      }
    end
  end
end
