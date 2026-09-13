# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Posts::CommentsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.posts.comments.create(
        "nulla",
        account: "acct_XXXXXXXXXXXXXXX",
        text: "This is a comment."
      )

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentCreateResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentCreateResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.comments.list("nulla", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentListResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.comments.delete(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentDeleteResponse::Data | nil
      }
    end
  end

  def test_like_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.comments.like(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentLikeResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentLikeResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentLikeResponse::Data | nil
      }
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.comments.pin(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentPinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentPinResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentPinResponse::Data | nil
      }
    end
  end

  def test_unlike_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.comments.unlike(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentUnlikeResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentUnlikeResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentUnlikeResponse::Data | nil
      }
    end
  end

  def test_unpin_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.posts.comments.unpin(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfans::Models::Posts::CommentUnpinResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Posts::CommentUnpinResponse::Meta | nil,
        data: Onlyfans::Models::Posts::CommentUnpinResponse::Data | nil
      }
    end
  end
end
