# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::SavedForLater::PostsTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.posts.list("acct_XXXXXXXXXXXXXXX", limit: 10, offset: 0)

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::PostListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::PostListResponse::Meta | nil,
        data: Onlyfansapi::Models::SavedForLater::PostListResponse::Data | nil
      }
    end
  end
end
