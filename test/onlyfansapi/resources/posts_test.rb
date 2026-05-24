# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::PostsTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.create("acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfansapi::Models::PostCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::PostCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::PostRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.update(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => String
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostListResponse::Meta | nil,
        data: Onlyfansapi::Models::PostListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.delete(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::PostDeleteResponse::Data | nil
      }
    end
  end

  def test_archive_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.archive(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostArchiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostArchiveResponse::Meta | nil,
        data: Onlyfansapi::Models::PostArchiveResponse::Data | nil
      }
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.pin(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostPinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostPinResponse::Meta | nil,
        data: Onlyfansapi::Models::PostPinResponse::Data | nil
      }
    end
  end

  def test_stats_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.stats(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostStatsResponse::Meta | nil,
        data: Onlyfansapi::Models::PostStatsResponse::Data | nil
      }
    end
  end

  def test_unarchive_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.unarchive(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PostUnarchiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PostUnarchiveResponse::Meta | nil,
        data: Onlyfansapi::Models::PostUnarchiveResponse::Data | nil
      }
    end
  end
end
