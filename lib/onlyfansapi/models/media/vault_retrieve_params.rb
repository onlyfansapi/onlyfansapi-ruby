# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Vault#retrieve
      class VaultRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
