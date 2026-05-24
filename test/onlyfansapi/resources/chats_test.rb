# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::ChatsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.chats.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::ChatListResponse::Pagination | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::ChatListResponse::Data]) | nil
      }
    end
  end

  def test_start_typing_indicator_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.chats.start_typing_indicator("458485726", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatStartTypingIndicatorResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatStartTypingIndicatorResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatStartTypingIndicatorResponse::Data | nil
      }
    end
  end
end
