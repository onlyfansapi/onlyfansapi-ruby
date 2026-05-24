# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Chats::MessagesTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.chats.messages.list("458485726", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::Chats::MessageListResponse::Pagination | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Chats::MessageListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.chats.messages.delete("123456789", account: "acct_XXXXXXXXXXXXXXX", chat_id: "458485726")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MessageDeleteResponse::Data | nil
      }
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.chats.messages.send_("458485726", account: "acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageSendResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageSendResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::Chats::MessageSendResponse::Pagination | nil,
        data: Onlyfansapi::Models::Chats::MessageSendResponse::Data | nil
      }
    end
  end
end
