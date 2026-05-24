# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::ChatsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.list("acct_XXXXXXXXXXXXXXX")

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

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.delete("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatDeleteResponse::Data | nil
      }
    end
  end

  def test_hide_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.hide("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatHideResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatHideResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatHideResponse::Data | nil
      }
    end
  end

  def test_list_media_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.list_media("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatListMediaResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatListMediaResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatListMediaResponse::Data | nil
      }
    end
  end

  def test_mark_as_unread_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mark_as_unread("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatMarkAsUnreadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatMarkAsUnreadResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatMarkAsUnreadResponse::Data | nil
      }
    end
  end

  def test_mute_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mute("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatMuteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatMuteResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatMuteResponse::Data | nil
      }
    end
  end

  def test_start_typing_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.start_typing("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatStartTypingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatStartTypingResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatStartTypingResponse::Data | nil
      }
    end
  end

  def test_unmute_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.unmute("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChatUnmuteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChatUnmuteResponse::Meta | nil,
        data: Onlyfansapi::Models::ChatUnmuteResponse::Data | nil
      }
    end
  end
end
