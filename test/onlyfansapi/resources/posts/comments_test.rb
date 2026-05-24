# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Posts::CommentsTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.posts.comments.create("ullam", account: "acct_XXXXXXXXXXXXXXX", text: "This is a comment.")

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentCreateResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.comments.list("ullam", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentListResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.comments.delete(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentDeleteResponse::Data | nil
      }
    end
  end

  def test_like_comment_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.comments.like_comment(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentLikeCommentResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentLikeCommentResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentLikeCommentResponse::Data | nil
      }
    end
  end

  def test_pin_comment_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.comments.pin_comment(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentPinCommentResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentPinCommentResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentPinCommentResponse::Data | nil
      }
    end
  end

  def test_unlike_comment_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.comments.unlike_comment(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentUnlikeCommentResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentUnlikeCommentResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentUnlikeCommentResponse::Data | nil
      }
    end
  end

  def test_unpin_comment_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.posts.comments.unpin_comment(123, account: "acct_XXXXXXXXXXXXXXX", post_id: 123)

    assert_pattern do
      response => Onlyfansapi::Models::Posts::CommentUnpinCommentResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Posts::CommentUnpinCommentResponse::Meta | nil,
        data: Onlyfansapi::Models::Posts::CommentUnpinCommentResponse::Data | nil
      }
    end
  end
end
