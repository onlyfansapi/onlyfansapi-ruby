# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      module Financial
        # @see Onlyfans::Resources::Analytics::Financial::Profitability#get_profitability
        class ProfitabilityGetProfitabilityParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          # @!attribute account_ids
          #   Array of account prefixed IDs
          #
          #   @return [Array<String>]
          required :account_ids, Onlyfans::Internal::Type::ArrayOf[String]

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
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
