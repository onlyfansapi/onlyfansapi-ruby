# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Comments#create
      class CommentCreateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute post_id
        #
        #   @return [String]
        required :post_id, String

        # @!attribute text
        #   The text of the comment.
        #
        #   @return [String]
        required :text, String

        # @!attribute answer_to
        #   The ID of the comment to which this comment is a reply.
        #
        #   @return [Integer, nil]
        optional :answer_to, Integer

        # @!attribute giphy_id
        #   The ID of the Giphy to include in the comment.
        #
        #   @return [String, nil]
        optional :giphy_id, String

        # @!method initialize(account:, post_id:, text:, answer_to: nil, giphy_id: nil, request_options: {})
        #   @param account [String]
        #
        #   @param post_id [String]
        #
        #   @param text [String] The text of the comment.
        #
        #   @param answer_to [Integer] The ID of the comment to which this comment is a reply.
        #
        #   @param giphy_id [String] The ID of the Giphy to include in the comment.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
