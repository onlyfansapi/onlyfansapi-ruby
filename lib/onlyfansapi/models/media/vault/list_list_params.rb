# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      module Vault
        # @see Onlyfansapi::Resources::Media::Vault::Lists#list
        class ListListParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute limit
          #   Number of media to return per page. Default: `24`
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #   The offset used for pagination. Default `0`
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute query
          #   Optionally, find a list by its name.
          #
          #   @return [String, nil]
          optional :query, String

          # @!method initialize(account:, limit: nil, offset: nil, query: nil, request_options: {})
          #   @param account [String]
          #
          #   @param limit [Integer] Number of media to return per page. Default: `24`
          #
          #   @param offset [Integer] The offset used for pagination. Default `0`
          #
          #   @param query [String] Optionally, find a list by its name.
          #
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
