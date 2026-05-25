# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::WhoamiTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.whoami.retrieve

    assert_pattern do
      response => Onlyfans::Models::WhoamiRetrieveResponse
    end

    assert_pattern do
      response => {
        api_key: Onlyfans::Models::WhoamiRetrieveResponse::APIKey | nil,
        team: Onlyfans::Models::WhoamiRetrieveResponse::Team | nil
      }
    end
  end
end
