# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      # @see Onlyfans::Resources::Media::Vault#retrieve
      class VaultRetrieveParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute media_id
        #
        #   @return [Integer]
        required :media_id, Integer

        # @!method initialize(account:, media_id:, request_options: {})
        #   @param account [String]
        #   @param media_id [Integer]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
