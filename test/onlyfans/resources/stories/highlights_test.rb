# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Stories::HighlightsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.stories.highlights.create(
        "acct_XXXXXXXXXXXXXXX",
        cover_story_id: 9_876_543_210,
        story_ids: %w[string string],
        title: "My Highlight"
      )

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightCreateResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.highlights.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.stories.highlights.update(
        1_234_567_890,
        account: "acct_XXXXXXXXXXXXXXX",
        cover_story_id: 9_876_543_210,
        story_ids: %w[string string],
        title: "My Updated Highlight"
      )

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightUpdateResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.highlights.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightListResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.highlights.delete(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightDeleteResponse::Data | nil
      }
    end
  end

  def test_add_story_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.stories.highlights.add_story(
        "est",
        account: "acct_XXXXXXXXXXXXXXX",
        highlight_id: 1_234_567_890,
        body_story_id: 2_345_678_901
      )

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightAddStoryResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightAddStoryResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightAddStoryResponse::Data | nil
      }
    end
  end

  def test_remove_story_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.stories.highlights.remove_story(
        "est",
        account: "acct_XXXXXXXXXXXXXXX",
        highlight_id: 1_234_567_890
      )

    assert_pattern do
      response => Onlyfans::Models::Stories::HighlightRemoveStoryResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Stories::HighlightRemoveStoryResponse::Meta | nil,
        data: Onlyfans::Models::Stories::HighlightRemoveStoryResponse::Data | nil
      }
    end
  end
end
