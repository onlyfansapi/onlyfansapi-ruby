# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfansapi::Test::Resources::Engagement::Messages::MassMessagesTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.mass_messages.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Pagination | nil,
        data: Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data | nil
      }
    end
  end

  def test_chart
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.mass_messages.chart("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta | nil,
        data: Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data | nil
      }
    end
  end
end
