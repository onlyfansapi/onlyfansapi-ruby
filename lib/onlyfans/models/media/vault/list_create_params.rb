# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      module Vault
        # @see Onlyfans::Resources::Media::Vault::Lists#create
        class ListCreateParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute name
          #   The name of your new list
          #
          #   @return [String]
          required :name, String

          # @!method initialize(account:, name:, request_options: {})
          #   @param account [String]
          #
          #   @param name [String] The name of your new list
          #
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
