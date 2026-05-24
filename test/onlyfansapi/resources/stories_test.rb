# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::StoriesTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.stories.create("acct_XXXXXXXXXXXXXXX", media_files: %w[ofapi_media_abc123 string])

    assert_pattern do
      response => Onlyfansapi::Models::StoryCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryRetrieveResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.delete(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryDeleteResponse::Data | nil
      }
    end
  end

  def test_list_active
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryListActiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryListActiveResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryListActiveResponse::Data]) | nil
      }
    end
  end

  def test_list_archive
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.list_archive("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryListArchiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryListArchiveResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryListArchiveResponse::Data | nil
      }
    end
  end

  def test_list_viewers_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.list_viewers(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryListViewersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryListViewersResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryListViewersResponse::Data | nil
      }
    end
  end

  def test_mark_as_watched_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.mark_as_watched(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryMarkAsWatchedResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryMarkAsWatchedResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryMarkAsWatchedResponse::Data | nil
      }
    end
  end

  def test_retrieve_stats_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.retrieve_stats(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoryRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta | nil,
        data: Onlyfansapi::Models::StoryRetrieveStatsResponse::Data | nil
      }
    end
  end
end
