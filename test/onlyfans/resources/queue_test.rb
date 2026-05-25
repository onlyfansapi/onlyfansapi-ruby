# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::QueueTest < Onlyfans::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.queue.list(
        "acct_XXXXXXXXXXXXXXX",
        limit: 20,
        publish_date_end: "2025-01-01",
        publish_date_start: "2025-01-01",
        timezone: "Europe/Prague"
      )

    assert_pattern do
      response => Onlyfans::Models::QueueListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::QueueListResponse::Meta | nil,
        data: Onlyfans::Models::QueueListResponse::Data | nil
      }
    end
  end

  def test_count_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.queue.count(
        "acct_XXXXXXXXXXXXXXX",
        publish_date_end: "2025-01-01",
        publish_date_start: "2025-01-01",
        timezone: "Europe/Prague"
      )

    assert_pattern do
      response => Onlyfans::Models::QueueCountResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::QueueCountResponse::Meta | nil,
        data: Onlyfans::Models::QueueCountResponse::Data | nil
      }
    end
  end

  def test_publish_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.queue.publish("queue_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::QueuePublishResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::QueuePublishResponse::Meta | nil,
        data: Onlyfans::Models::QueuePublishResponse::Data | nil
      }
    end
  end
end
