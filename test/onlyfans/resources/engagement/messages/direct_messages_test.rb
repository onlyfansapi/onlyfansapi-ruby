# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfans::Test::Resources::Engagement::Messages::DirectMessagesTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.direct_messages.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Engagement::Messages::DirectMessageListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta | nil,
        _pagination: Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Pagination | nil,
        data: Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data | nil
      }
    end
  end

  def test_chart
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.direct_messages.chart("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Engagement::Messages::DirectMessageChartResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Engagement::Messages::DirectMessageChartResponse::Meta | nil,
        data: Onlyfans::Models::Engagement::Messages::DirectMessageChartResponse::Data | nil
      }
    end
  end
end
