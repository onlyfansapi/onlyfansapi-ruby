# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::QueueTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.queue.list(
        "acct_XXXXXXXXXXXXXXX",
        limit: 20,
        publish_date_end: "2025-01-01",
        publish_date_start: "2025-01-01",
        timezone: "Europe/Prague"
      )

    assert_pattern do
      response => Onlyfansapi::Models::QueueListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::QueueListResponse::Meta | nil,
        data: Onlyfansapi::Models::QueueListResponse::Data | nil
      }
    end
  end

  def test_count_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.queue.count(
        "acct_XXXXXXXXXXXXXXX",
        publish_date_end: "2025-01-01",
        publish_date_start: "2025-01-01",
        timezone: "Europe/Prague"
      )

    assert_pattern do
      response => Onlyfansapi::Models::QueueCountResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::QueueCountResponse::Meta | nil,
        data: Onlyfansapi::Models::QueueCountResponse::Data | nil
      }
    end
  end

  def test_publish_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.queue.publish("queue_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::QueuePublishResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::QueuePublishResponse::Meta | nil,
        data: Onlyfansapi::Models::QueuePublishResponse::Data | nil
      }
    end
  end
end
