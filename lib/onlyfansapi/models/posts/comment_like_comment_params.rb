# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Posts
      # @see Onlyfansapi::Resources::Posts::Comments#like_comment
      class CommentLikeCommentParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute post_id
        #
        #   @return [Integer]
        required :post_id, Integer

        # @!attribute comment_id
        #
        #   @return [Integer]
        required :comment_id, Integer

        # @!method initialize(account:, post_id:, comment_id:, request_options: {})
        #   @param account [String]
        #   @param post_id [Integer]
        #   @param comment_id [Integer]
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
