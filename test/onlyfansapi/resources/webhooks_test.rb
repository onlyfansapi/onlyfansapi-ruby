# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::WebhooksTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.webhooks.create(
        endpoint_url: "https://example.com",
        events: ["accounts.connected", "subscriptions.new"]
      )

    assert_pattern do
      response => Onlyfansapi::Models::WebhookCreateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        created_at: String | nil,
        events: ^(Onlyfansapi::Internal::Type::ArrayOf[String]) | nil,
        has_signing_secret: Onlyfansapi::Internal::Type::Boolean | nil,
        url: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @onlyfansapi.webhooks.delete("wh_abc123")

    assert_pattern do
      response => Onlyfansapi::Internal::Type::Unknown
    end
  end
end
