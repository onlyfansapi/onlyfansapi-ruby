# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::UserListsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.create("acct_XXXXXXXXXXXXXXX", name: "lgtzlknyaqdualbphbbvjsc")

    assert_pattern do
      response => Onlyfans::Models::UserListCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserListCreateResponse::Meta | nil,
        data: Onlyfans::Models::UserListCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.retrieve("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserListRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserListRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::UserListRetrieveResponse::Data | nil
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
      response => Onlyfans::Models::UserListUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserListUpdateResponse::Meta | nil,
        data: Onlyfans::Models::UserListUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserListListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserListListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::UserListListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.user_lists.delete("userListId", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserListDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserListDeleteResponse::Meta | nil,
        data: Onlyfans::Models::UserListDeleteResponse::Data | nil
      }
    end
  end
end
