# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::ClientSessionsTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.client_sessions.create(display_name: "STRLCxGLVC Agency / Model: Stella")

    assert_pattern do
      response => Onlyfansapi::Models::ClientSessionCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ClientSessionCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::ClientSessionCreateResponse::Data | nil
      }
    end
  end
end
