# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::PostsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.create("acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfans::Models::PostCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostCreateResponse::Meta | nil,
        data: Onlyfans::Models::PostCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::PostRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.update(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => String
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostListResponse::Meta | nil,
        data: Onlyfans::Models::PostListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.delete(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostDeleteResponse::Meta | nil,
        data: Onlyfans::Models::PostDeleteResponse::Data | nil
      }
    end
  end

  def test_archive_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.archive(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostArchiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostArchiveResponse::Meta | nil,
        data: Onlyfans::Models::PostArchiveResponse::Data | nil
      }
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.pin(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostPinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostPinResponse::Meta | nil,
        data: Onlyfans::Models::PostPinResponse::Data | nil
      }
    end
  end

  def test_stats_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.stats(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostStatsResponse::Meta | nil,
        data: Onlyfans::Models::PostStatsResponse::Data | nil
      }
    end
  end

  def test_unarchive_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.unarchive(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PostUnarchiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PostUnarchiveResponse::Meta | nil,
        data: Onlyfans::Models::PostUnarchiveResponse::Data | nil
      }
    end
  end
end
