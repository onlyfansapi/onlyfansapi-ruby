# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::StoriesTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.stories.create("acct_XXXXXXXXXXXXXXX", media_files: %w[ofapi_media_abc123 string])

    assert_pattern do
      response => Onlyfans::Models::StoryCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryCreateResponse::Meta | nil,
        data: Onlyfans::Models::StoryCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::StoryRetrieveResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.delete(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryDeleteResponse::Meta | nil,
        data: Onlyfans::Models::StoryDeleteResponse::Data | nil
      }
    end
  end

  def test_list_active
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryListActiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryListActiveResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoryListActiveResponse::Data]) | nil
      }
    end
  end

  def test_list_archive
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.list_archive("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryListArchiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryListArchiveResponse::Meta | nil,
        data: Onlyfans::Models::StoryListArchiveResponse::Data | nil
      }
    end
  end

  def test_list_viewers_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.list_viewers(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryListViewersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryListViewersResponse::Meta | nil,
        data: Onlyfans::Models::StoryListViewersResponse::Data | nil
      }
    end
  end

  def test_mark_as_watched_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.mark_as_watched(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryMarkAsWatchedResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryMarkAsWatchedResponse::Meta | nil,
        data: Onlyfans::Models::StoryMarkAsWatchedResponse::Data | nil
      }
    end
  end

  def test_retrieve_stats_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.stories.retrieve_stats(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoryRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoryRetrieveStatsResponse::Meta | nil,
        data: Onlyfans::Models::StoryRetrieveStatsResponse::Data | nil
      }
    end
  end
end
