# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::SavedForLater::MessagesTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.messages.list("acct_XXXXXXXXXXXXXXX", limit: 10, offset: 0)

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::MessageListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::MessageListResponse::Meta | nil,
        data: Onlyfansapi::Models::SavedForLater::MessageListResponse::Data | nil
      }
    end
  end
end
