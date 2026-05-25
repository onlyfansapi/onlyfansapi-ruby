# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Engagement::MessagesTest < Onlyfansapi::Test::ResourceTest
  def test_get_message_buyers_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.engagement.messages.get_message_buyers("iusto", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Pagination | nil,
        data: Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data | nil
      }
    end
  end

  def test_get_top_message
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.get_top_message("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Engagement::MessageGetTopMessageResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Engagement::MessageGetTopMessageResponse::Meta | nil,
        data: Onlyfansapi::Models::Engagement::MessageGetTopMessageResponse::Data | nil
      }
    end
  end
end
