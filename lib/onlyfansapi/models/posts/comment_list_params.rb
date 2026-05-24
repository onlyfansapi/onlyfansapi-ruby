# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Posts
      # @see Onlyfansapi::Resources::Posts::Comments#list
      class CommentListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute post_id
        #
        #   @return [String]
        required :post_id, String

        # @!attribute limit
        #   Number of comments to return (default = 10)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Number of comments to skip for pagination
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute sort
        #   Sort the returned comments (default = desc)
        #
        #   @return [Symbol, Onlyfansapi::Models::Posts::CommentListParams::Sort, nil]
        optional :sort, enum: -> { Onlyfansapi::Posts::CommentListParams::Sort }

        # @!method initialize(account:, post_id:, limit: nil, offset: nil, sort: nil, request_options: {})
        #   @param account [String]
        #
        #   @param post_id [String]
        #
        #   @param limit [Integer] Number of comments to return (default = 10)
        #
        #   @param offset [Integer] Number of comments to skip for pagination
        #
        #   @param sort [Symbol, Onlyfansapi::Models::Posts::CommentListParams::Sort] Sort the returned comments (default = desc)
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

        # Sort the returned comments (default = desc)
        module Sort
          extend Onlyfansapi::Internal::Type::Enum

          DESC = :desc
          ASC = :asc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
