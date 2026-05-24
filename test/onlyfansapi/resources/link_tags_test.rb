# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::LinkTagsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.link_tags.list

    assert_pattern do
      response => Onlyfansapi::Models::LinkTagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::LinkTagListResponse::Meta | nil,
        data: Onlyfansapi::Models::LinkTagListResponse::Data | nil
      }
    end
  end
end
