# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Comments#unpin
      class CommentUnpinParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
