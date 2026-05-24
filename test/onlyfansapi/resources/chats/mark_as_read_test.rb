# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Chats::MarkAsReadTest < Onlyfansapi::Test::ResourceTest
  def test_all
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mark_as_read.all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Chats::MarkAsReadAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Chats::MarkAsReadAllResponse::Meta | nil,
        data: Onlyfansapi::Models::Chats::MarkAsReadAllResponse::Data | nil
      }
    end
  end
end
