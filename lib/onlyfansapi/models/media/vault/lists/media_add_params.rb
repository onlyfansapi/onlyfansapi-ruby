# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      module Vault
        module Lists
          # @see Onlyfansapi::Resources::Media::Vault::Lists::Media#add
          class MediaAddParams < Onlyfansapi::Internal::Type::BaseModel
            extend Onlyfansapi::Internal::Type::RequestParameters::Converter
            include Onlyfansapi::Internal::Type::RequestParameters

            # @!attribute account
            #
            #   @return [String]
            required :account, String

            # @!attribute list_id
            #
            #   @return [String]
            required :list_id, String

            # @!attribute media_ids
            #   Array of media IDs to add.
            #
            #   @return [Array<String>]
            required :media_ids, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :mediaIds

            # @!method initialize(account:, list_id:, media_ids:, request_options: {})
            #   @param account [String]
            #
            #   @param list_id [String]
            #
            #   @param media_ids [Array<String>] Array of media IDs to add.
            #
            #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
