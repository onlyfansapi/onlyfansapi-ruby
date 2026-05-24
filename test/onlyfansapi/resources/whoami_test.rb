# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::WhoamiTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.whoami.retrieve

    assert_pattern do
      response => Onlyfansapi::Models::WhoamiRetrieveResponse
    end

    assert_pattern do
      response => {
        api_key: Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey | nil,
        team: Onlyfansapi::Models::WhoamiRetrieveResponse::Team | nil
      }
    end
  end
end
