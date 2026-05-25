# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      module Vault
        # @see Onlyfans::Resources::Media::Vault::Lists#delete
        class ListDeleteParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

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
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
