# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::ProfilesTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.profiles.retrieve("madison420ivy")

    assert_pattern do
      response => Onlyfans::Models::ProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ProfileRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::ProfileRetrieveResponse::Data | nil
      }
    end
  end
end
