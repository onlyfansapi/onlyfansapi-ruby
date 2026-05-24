# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::NotificationsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.notifications.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::NotificationListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::NotificationListResponse::Meta | nil,
        data: Onlyfansapi::Models::NotificationListResponse::Data | nil
      }
    end
  end

  def test_get_counts
    skip("Mock server tests are disabled")

    response = @onlyfansapi.notifications.get_counts("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::NotificationGetCountsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::NotificationGetCountsResponse::Meta | nil,
        data: Onlyfansapi::Models::NotificationGetCountsResponse::Data | nil
      }
    end
  end

  def test_mark_all_as_read
    skip("Mock server tests are disabled")

    response = @onlyfansapi.notifications.mark_all_as_read("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::NotificationMarkAllAsReadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::NotificationMarkAllAsReadResponse::Meta | nil,
        data: Onlyfansapi::Models::NotificationMarkAllAsReadResponse::Data | nil
      }
    end
  end

  def test_search_users_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.notifications.search_users("acct_XXXXXXXXXXXXXXX", query: "User")

    assert_pattern do
      response => Onlyfansapi::Models::NotificationSearchUsersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::NotificationSearchUsersResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::NotificationSearchUsersResponse::Data]) | nil
      }
    end
  end
end
