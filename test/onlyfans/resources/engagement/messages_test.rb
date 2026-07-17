# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Engagement::MessagesTest < Onlyfans::Test::ResourceTest
  def test_get_message_buyers_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.engagement.messages.get_message_buyers("commodi", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Engagement::MessageGetMessageBuyersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Engagement::MessageGetMessageBuyersResponse::Meta | nil,
        _pagination: Onlyfans::Models::Engagement::MessageGetMessageBuyersResponse::Pagination | nil,
        data: Onlyfans::Models::Engagement::MessageGetMessageBuyersResponse::Data | nil
      }
    end
  end

  def test_get_top_message
    skip("Mock server tests are disabled")

    response = @only_fans_api.engagement.messages.get_top_message("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Engagement::MessageGetTopMessageResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta | nil,
        data: Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data | nil
      }
    end
  end
end
