# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::ChatsTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatListResponse::Meta | nil,
        _pagination: Onlyfans::Models::ChatListResponse::Pagination | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChatListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.delete("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatDeleteResponse::Meta | nil,
        data: Onlyfans::Models::ChatDeleteResponse::Data | nil
      }
    end
  end

  def test_hide_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.hide("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatHideResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatHideResponse::Meta | nil,
        data: Onlyfans::Models::ChatHideResponse::Data | nil
      }
    end
  end

  def test_list_media_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.list_media("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatListMediaResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatListMediaResponse::Meta | nil,
        data: Onlyfans::Models::ChatListMediaResponse::Data | nil
      }
    end
  end

  def test_mark_as_read_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mark_as_read("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatMarkAsReadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatMarkAsReadResponse::Meta | nil,
        data: Onlyfans::Models::ChatMarkAsReadResponse::Data | nil
      }
    end
  end

  def test_mark_as_unread_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mark_as_unread("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatMarkAsUnreadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatMarkAsUnreadResponse::Meta | nil,
        data: Onlyfans::Models::ChatMarkAsUnreadResponse::Data | nil
      }
    end
  end

  def test_mute_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mute("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatMuteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatMuteResponse::Meta | nil,
        data: Onlyfans::Models::ChatMuteResponse::Data | nil
      }
    end
  end

  def test_start_typing_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.start_typing("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatStartTypingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatStartTypingResponse::Meta | nil,
        data: Onlyfans::Models::ChatStartTypingResponse::Data | nil
      }
    end
  end

  def test_unmute_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.unmute("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChatUnmuteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChatUnmuteResponse::Meta | nil,
        data: Onlyfans::Models::ChatUnmuteResponse::Data | nil
      }
    end
  end
end
