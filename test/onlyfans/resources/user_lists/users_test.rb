# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::UserLists::UsersTest < Onlyfans::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.users.list("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserLists::UserListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserLists::UserListResponse::Meta | nil,
        data: Onlyfans::Models::UserLists::UserListResponse::Data | nil
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
      response => Onlyfans::Models::UserLists::UserAddResponse
    end

    assert_pattern do
      case response
      in Onlyfans::Models::UserLists::UserAddResponse::UnionMember0
      in Onlyfans::Models::UserLists::UserAddResponse::UnionMember1
      end
    end
  end

  def test_clear_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.users.clear("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserLists::UserClearResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserLists::UserClearResponse::Meta | nil,
        data: Onlyfans::Models::UserLists::UserClearResponse::Data | nil
      }
    end
  end

  def test_list_pinned_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.users.list_pinned("friends", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserLists::UserListPinnedResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserLists::UserListPinnedResponse::Meta | nil,
        data: Onlyfans::Models::UserLists::UserListPinnedResponse::Data | nil
      }
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.user_lists.users.pin(1_145_988, account: "acct_XXXXXXXXXXXXXXX", user_list_id: "friends")

    assert_pattern do
      response => Onlyfans::Models::UserLists::UserPinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserLists::UserPinResponse::Meta | nil,
        data: Onlyfans::Models::UserLists::UserPinResponse::Data | nil
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
      response => Onlyfans::Models::UserLists::UserRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserLists::UserRemoveResponse::Meta | nil,
        data: Onlyfans::Models::UserLists::UserRemoveResponse::Data | nil
      }
    end
  end
end
