# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::SavedForLater::MessagesTest < Onlyfans::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.messages.list("acct_XXXXXXXXXXXXXXX", limit: 10, offset: 0)

    assert_pattern do
      response => Onlyfans::Models::SavedForLater::MessageListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::MessageListResponse::Meta | nil,
        data: Onlyfans::Models::SavedForLater::MessageListResponse::Data | nil
      }
    end
  end
end
