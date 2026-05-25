# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::MessagesTest < Onlyfans::Test::ResourceTest
  def test_attach_tags_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.messages.attach_tags("123456789", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MessageAttachTagsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MessageAttachTagsResponse::Meta | nil,
        data: Onlyfans::Models::MessageAttachTagsResponse::Data | nil
      }
    end
  end
end
