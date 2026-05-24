# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::GiphyTest < Onlyfansapi::Test::ResourceTest
  def test_list_trending
    skip("Mock server tests are disabled")

    response = @only_fans_api.giphy.list_trending("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::GiphyListTrendingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::GiphyListTrendingResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::GiphyListTrendingResponse::Data]) | nil
      }
    end
  end

  def test_search_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.giphy.search("acct_XXXXXXXXXXXXXXX", q: "hello")

    assert_pattern do
      response => Onlyfansapi::Models::GiphySearchResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::GiphySearchResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::GiphySearchResponse::Data]) | nil
      }
    end
  end
end
