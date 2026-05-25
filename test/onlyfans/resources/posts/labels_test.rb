# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Posts::LabelsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.labels.create("acct_XXXXXXXXXXXXXXX", name: "My new label")

    assert_pattern do
      response => Onlyfans::Models::Posts::LabelCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::LabelCreateResponse::Meta | nil,
        data: Onlyfans::Models::Posts::LabelCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.labels.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Posts::LabelListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::LabelListResponse::Meta | nil,
        data: Onlyfans::Models::Posts::LabelListResponse::Data | nil
      }
    end
  end
end
