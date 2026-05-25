# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::LinkTagsTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.link_tags.list

    assert_pattern do
      response => Onlyfans::Models::LinkTagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::LinkTagListResponse::Meta | nil,
        data: Onlyfans::Models::LinkTagListResponse::Data | nil
      }
    end
  end
end
