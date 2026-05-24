# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        # @see Onlyfansapi::Resources::Analytics::Financial::Profitability#get_profitability
        class ProfitabilityGetProfitabilityParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          # @!attribute account_ids
          #   Array of account prefixed IDs
          #
          #   @return [Array<String>]
          required :account_ids, Onlyfansapi::Internal::Type::ArrayOf[String]

          # @!attribute month
          #   The month to calculate profitability for (1-12)
          #
          #   @return [Integer]
          required :month, Integer

          # @!attribute year
          #   The year to calculate profitability for
          #
          #   @return [Integer]
          required :year, Integer

          # @!method initialize(account_ids:, month:, year:, request_options: {})
          #   @param account_ids [Array<String>] Array of account prefixed IDs
          #
          #   @param month [Integer] The month to calculate profitability for (1-12)
          #
          #   @param year [Integer] The year to calculate profitability for
          #
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
