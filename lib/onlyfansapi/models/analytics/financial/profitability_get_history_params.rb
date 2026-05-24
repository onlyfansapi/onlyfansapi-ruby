# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        # @see Onlyfansapi::Resources::Analytics::Financial::Profitability#get_history
        class ProfitabilityGetHistoryParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute months
          #   Number of months of history to retrieve (1-60, default 12)
          #
          #   @return [Integer, nil]
          optional :months, Integer

          # @!method initialize(account:, months: nil, request_options: {})
          #   @param account [String]
          #
          #   @param months [Integer] Number of months of history to retrieve (1-60, default 12)
          #
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
