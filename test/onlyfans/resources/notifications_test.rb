# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::NotificationsTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.notifications.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::NotificationListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::NotificationListResponse::Meta | nil,
        data: Onlyfans::Models::NotificationListResponse::Data | nil
      }
    end
  end

  def test_get_counts
    skip("Mock server tests are disabled")

    response = @only_fans_api.notifications.get_counts("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::NotificationGetCountsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::NotificationGetCountsResponse::Meta | nil,
        data: Onlyfans::Models::NotificationGetCountsResponse::Data | nil
      }
    end
  end

  def test_mark_all_as_read
    skip("Mock server tests are disabled")

    response = @only_fans_api.notifications.mark_all_as_read("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::NotificationMarkAllAsReadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::NotificationMarkAllAsReadResponse::Meta | nil,
        data: Onlyfans::Models::NotificationMarkAllAsReadResponse::Data | nil
      }
    end
  end

  def test_search_users_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.notifications.search_users("acct_XXXXXXXXXXXXXXX", query: "User")

    assert_pattern do
      response => Onlyfans::Models::NotificationSearchUsersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::NotificationSearchUsersResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::NotificationSearchUsersResponse::Data]) | nil
      }
    end
  end
end
