# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SubscribersTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_statistics
    skip("Mock server tests are disabled")

    response = @only_fans_api.subscribers.retrieve_statistics("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SubscriberRetrieveStatisticsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SubscriberRetrieveStatisticsResponse::Meta | nil,
        data: Onlyfansapi::Models::SubscriberRetrieveStatisticsResponse::Data | nil
      }
    end
  end
end
