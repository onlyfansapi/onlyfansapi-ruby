# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::UsersTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.retrieve("exampleuser", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::UserRetrieveResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.list("acct_XXXXXXXXXXXXXXX", ids: "12412412,36139491,1858349")

    assert_pattern do
      response => Onlyfansapi::Models::UserListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserListResponse::Meta | nil,
        data: Onlyfansapi::Models::UserListResponse::Data | nil
      }
    end
  end
end
