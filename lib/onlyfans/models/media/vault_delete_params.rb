# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      # @see Onlyfans::Resources::Media::Vault#delete
      class VaultDeleteParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute media_ids
        #   Array of media IDs to delete.
        #
        #   @return [Array<String>]
        required :media_ids, Onlyfans::Internal::Type::ArrayOf[String], api_name: :mediaIds

        # @!method initialize(account:, media_ids:, request_options: {})
        #   @param account [String]
        #
        #   @param media_ids [Array<String>] Array of media IDs to delete.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
