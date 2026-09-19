# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      module Vault
        # @see Onlyfans::Resources::Media::Vault::Lists#update
        class ListUpdateParams < Onlyfans::Internal::Type::BaseModel
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

          # @!attribute name
          #   The new name for the vault list. Must not be greater than 255 characters.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(account:, list_id:, name:, request_options: {})
          #   @param account [String]
          #
          #   @param list_id [String]
          #
          #   @param name [String] The new name for the vault list. Must not be greater than 255 characters.
          #
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
