# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Chats::MarkAllAsReadTest < Onlyfans::Test::ResourceTest
  def test_all
    skip("Mock server tests are disabled")

    response = @only_fans_api.chats.mark_all_as_read.all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Chats::MarkAllAsReadAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Chats::MarkAllAsReadAllResponse::Meta | nil,
        data: Onlyfans::Models::Chats::MarkAllAsReadAllResponse::Data | nil
      }
    end
  end
end
