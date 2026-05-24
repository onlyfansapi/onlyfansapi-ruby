# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SearchTest < Onlyfansapi::Test::ResourceTest
  def test_profiles
    skip("Mock server tests are disabled")

    response = @only_fans_api.search.profiles

    assert_pattern do
      response => Onlyfansapi::Models::SearchProfilesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SearchProfilesResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::SearchProfilesResponse::Pagination | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SearchProfilesResponse::Data]) | nil
      }
    end
  end
end
