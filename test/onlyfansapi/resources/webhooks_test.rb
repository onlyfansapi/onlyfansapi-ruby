# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::WebhooksTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.webhooks.create(
        account_scope: "global",
        endpoint_url: "https://example.com",
        events: ["accounts.connected", "subscriptions.new"]
      )

    assert_pattern do
      response => Onlyfansapi::Models::WebhookCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::WebhookCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::WebhookCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.retrieve("wh_abc123")

    assert_pattern do
      response => Onlyfansapi::Models::WebhookRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::WebhookRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::WebhookRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.webhooks.update(
        "wh_abc123",
        account_scope: "global",
        endpoint_url: "https://example.com",
        events: ["accounts.connected", "subscriptions.new"]
      )

    assert_pattern do
      response => Onlyfansapi::Models::WebhookUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::WebhookUpdateResponse::Meta | nil,
        data: Onlyfansapi::Models::WebhookUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.list

    assert_pattern do
      response => Onlyfansapi::Models::WebhookListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::WebhookListResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::WebhookListResponse::Data]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.delete("wh_abc123")

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::HashOf[Onlyfansapi::Internal::Type::Unknown])
    end
  end

  def test_list_events
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.list_events

    assert_pattern do
      response => Onlyfansapi::Models::WebhookListEventsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::WebhookListEventsResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::WebhookListEventsResponse::Data]) | nil
      }
    end
  end
end
