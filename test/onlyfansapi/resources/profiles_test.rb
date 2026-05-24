# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::ProfilesTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.profiles.retrieve("madison420ivy")

    assert_pattern do
      response => Onlyfansapi::Models::ProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ProfileRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::ProfileRetrieveResponse::Data | nil
      }
    end
  end
end
