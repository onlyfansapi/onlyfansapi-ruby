# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::UsersTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.users.retrieve("exampleuser", account: "acct_XXXXXXXXXXXXXXX")

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
end
