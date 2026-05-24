# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::UserListsTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.create("acct_XXXXXXXXXXXXXXX", name: "iaxxxx")

    assert_pattern do
      response => Onlyfansapi::Models::UserListCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserListCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::UserListCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.retrieve("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserListRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserListRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::UserListRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.user_lists.update(
        "userListId",
        account: "acct_XXXXXXXXXXXXXXX",
        name: "My Updated List Name"
      )

    assert_pattern do
      response => Onlyfansapi::Models::UserListUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserListUpdateResponse::Meta | nil,
        data: Onlyfansapi::Models::UserListUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserListListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserListListResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::UserListListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.delete("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserListDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserListDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::UserListDeleteResponse::Data | nil
      }
    end
  end
end
