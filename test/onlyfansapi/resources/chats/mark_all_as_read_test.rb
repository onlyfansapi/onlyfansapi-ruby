# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Chats::MarkAllAsReadTest < Onlyfansapi::Test::ResourceTest
  def test_all
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mark_all_as_read.all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MarkAllAsReadAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MarkAllAsReadAllResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MarkAllAsReadAllResponse::Data | nil
      }
    end
  end
end
