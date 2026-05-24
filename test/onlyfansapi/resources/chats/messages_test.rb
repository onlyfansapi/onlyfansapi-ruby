# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Chats::MessagesTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.chats.messages.retrieve("69696969", account: "acct_XXXXXXXXXXXXXXX", chat_id: "123")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MessageRetrieveResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.messages.list("123", account: "acct_XXXXXXXXXXXXXXX")

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
      @only_fans_api.chats.messages.delete("69696969", account: "acct_XXXXXXXXXXXXXXX", chat_id: "123")

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

  def test_like_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.chats.messages.like("123456789", account: "acct_XXXXXXXXXXXXXXX", chat_id: "123")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageLikeResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageLikeResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MessageLikeResponse::Data | nil
      }
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.chats.messages.pin("123456789", account: "acct_XXXXXXXXXXXXXXX", chat_id: "123")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessagePinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessagePinResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MessagePinResponse::Data | nil
      }
    end
  end

  def test_search_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.messages.search("123", account: "acct_XXXXXXXXXXXXXXX", query: "Hello")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageSearchResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageSearchResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Integer]) | nil
      }
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.messages.send_("123", account: "acct_XXXXXXXXXXXXXXX")

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

  def test_unlike_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.chats.messages.unlike("123456789", account: "acct_XXXXXXXXXXXXXXX", chat_id: "123")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageUnlikeResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageUnlikeResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MessageUnlikeResponse::Data | nil
      }
    end
  end

  def test_unpin_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.chats.messages.unpin("123456789", account: "acct_XXXXXXXXXXXXXXX", chat_id: "123")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MessageUnpinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MessageUnpinResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MessageUnpinResponse::Data | nil
      }
    end
  end
end
