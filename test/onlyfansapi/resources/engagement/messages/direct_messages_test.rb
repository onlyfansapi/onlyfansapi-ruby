# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfansapi::Test::Resources::Engagement::Messages::DirectMessagesTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.direct_messages.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Engagement::Messages::DirectMessageListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Engagement::Messages::DirectMessageListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::Engagement::Messages::DirectMessageListResponse::Pagination | nil,
        data: Onlyfansapi::Models::Engagement::Messages::DirectMessageListResponse::Data | nil
      }
    end
  end

  def test_chart
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.direct_messages.chart("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta | nil,
        data: Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data | nil
      }
    end
  end
end
