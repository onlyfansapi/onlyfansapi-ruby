# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::UsersTest < Onlyfans::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.retrieve("exampleuser", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::UserRetrieveResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.list("acct_XXXXXXXXXXXXXXX", ids: "12412412,36139491,1858349")

    assert_pattern do
      response => Onlyfans::Models::UserListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::UserListResponse::Meta | nil,
        data: Onlyfans::Models::UserListResponse::Data | nil
      }
    end
  end
end
