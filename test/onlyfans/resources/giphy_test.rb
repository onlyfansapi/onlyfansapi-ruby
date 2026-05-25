# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::GiphyTest < Onlyfans::Test::ResourceTest
  def test_list_trending
    skip("Mock server tests are disabled")

    response = @only_fans_api.giphy.list_trending("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::GiphyListTrendingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::GiphyListTrendingResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::GiphyListTrendingResponse::Data]) | nil
      }
    end
  end

  def test_search_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.giphy.search("acct_XXXXXXXXXXXXXXX", q: "hello")

    assert_pattern do
      response => Onlyfans::Models::GiphySearchResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::GiphySearchResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::GiphySearchResponse::Data]) | nil
      }
    end
  end
end
