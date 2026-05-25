# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SubscribersTest < Onlyfans::Test::ResourceTest
  def test_retrieve_statistics
    skip("Mock server tests are disabled")

    response = @only_fans_api.subscribers.retrieve_statistics("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SubscriberRetrieveStatisticsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta | nil,
        data: Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data | nil
      }
    end
  end
end
