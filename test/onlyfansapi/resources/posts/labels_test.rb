# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Posts::LabelsTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.labels.create("acct_XXXXXXXXXXXXXXX", name: "My new label")

    assert_pattern do
      response => Onlyfansapi::Models::Posts::LabelCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::LabelCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::LabelCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.labels.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Posts::LabelListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::LabelListResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::LabelListResponse::Data | nil
      }
    end
  end
end
