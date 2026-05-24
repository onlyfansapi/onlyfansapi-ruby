# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      module Vault
        # @see Onlyfansapi::Resources::Media::Vault::Lists#update
        class ListUpdateParams < Onlyfansapi::Internal::Type::BaseModel
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

          # @!method initialize(account:, list_id:, request_options: {})
          #   @param account [String]
          #   @param list_id [String]
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
