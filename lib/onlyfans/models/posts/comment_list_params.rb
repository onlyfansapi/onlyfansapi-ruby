# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Comments#list
      class CommentListParams < Onlyfans::Internal::Type::BaseModel
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
        #   @return [Symbol, Onlyfans::Models::Posts::CommentListParams::Sort, nil]
        optional :sort, enum: -> { Onlyfans::Posts::CommentListParams::Sort }

        # @!method initialize(account:, post_id:, limit: nil, offset: nil, sort: nil, request_options: {})
        #   @param account [String]
        #
        #   @param post_id [String]
        #
        #   @param limit [Integer] Number of comments to return (default = 10)
        #
        #   @param offset [Integer] Number of comments to skip for pagination
        #
        #   @param sort [Symbol, Onlyfans::Models::Posts::CommentListParams::Sort] Sort the returned comments (default = desc)
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        # Sort the returned comments (default = desc)
        module Sort
          extend Onlyfans::Internal::Type::Enum

          DESC = :desc
          ASC = :asc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
