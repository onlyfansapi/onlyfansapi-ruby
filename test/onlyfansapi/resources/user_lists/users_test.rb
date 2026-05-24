# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::UserLists::UsersTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.users.list("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserListResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.user_lists.users.add(
        "userListId",
        account: "acct_XXXXXXXXXXXXXXX",
        ids: %w[string string string]
      )

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserAddResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserAddResponse::Data | nil
      }
    end
  end

  def test_clear_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.users.clear("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserClearResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserClearResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserClearResponse::Data | nil
      }
    end
  end

  def test_list_pinned_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.users.list_pinned("friends", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserListPinnedResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserListPinnedResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserListPinnedResponse::Data | nil
      }
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.user_lists.users.pin(1_145_988, account: "acct_XXXXXXXXXXXXXXX", user_list_id: "friends")

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserPinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserPinResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserPinResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.user_lists.users.remove(
        123_456,
        account: "acct_XXXXXXXXXXXXXXX",
        user_list_id: "userListId"
      )

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserRemoveResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserRemoveResponse::Data | nil
      }
    end
  end
end
