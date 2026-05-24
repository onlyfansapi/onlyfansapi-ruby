# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Vault#delete
      class VaultDeleteParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute media_ids
        #   Array of media IDs to delete.
        #
        #   @return [Array<String>]
        required :media_ids, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :mediaIds

        # @!method initialize(account:, media_ids:, request_options: {})
        #   @param account [String]
        #
        #   @param media_ids [Array<String>] Array of media IDs to delete.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
