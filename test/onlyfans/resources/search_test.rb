# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SearchTest < Onlyfans::Test::ResourceTest
  def test_profiles
    skip("Mock server tests are disabled")

    response = @only_fans_api.search.profiles

    assert_pattern do
      response => Onlyfans::Models::SearchProfilesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SearchProfilesResponse::Meta | nil,
        _pagination: Onlyfans::Models::SearchProfilesResponse::Pagination | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SearchProfilesResponse::Data]) | nil
      }
    end
  end
end
