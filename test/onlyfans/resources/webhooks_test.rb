# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::WebhooksTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.webhooks.create(
        account_scope: "global",
        endpoint_url: "https://example.com",
        events: ["accounts.connected", "subscriptions.new"]
      )

    assert_pattern do
      response => Onlyfans::Models::WebhookCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::WebhookCreateResponse::Meta | nil,
        data: Onlyfans::Models::WebhookCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.retrieve("wh_abc123")

    assert_pattern do
      response => Onlyfans::Models::WebhookRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::WebhookRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::WebhookRetrieveResponse::Data | nil
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
      response => Onlyfans::Models::WebhookUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::WebhookUpdateResponse::Meta | nil,
        data: Onlyfans::Models::WebhookUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.list

    assert_pattern do
      response => Onlyfans::Models::WebhookListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::WebhookListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::WebhookListResponse::Data]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.delete("wh_abc123")

    assert_pattern do
      response => ^(Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown])
    end
  end

  def test_list_events
    skip("Mock server tests are disabled")

    response = @only_fans_api.webhooks.list_events

    assert_pattern do
      response => Onlyfans::Models::WebhookListEventsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::WebhookListEventsResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::WebhookListEventsResponse::Data]) | nil
      }
    end
  end
end
