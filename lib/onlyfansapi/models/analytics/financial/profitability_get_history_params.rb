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

          # @!attribute account_prefixed_id
          #   The account prefixed ID.
          #
          #   @return [String]
          required :account_prefixed_id, String

          # @!attribute months
          #   Number of months of history to retrieve (1-60, default 12). Must be at least 1.
          #   Must not be greater than 60.
          #
          #   @return [Integer, nil]
          optional :months, Integer

          # @!method initialize(account:, account_prefixed_id:, months: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryParams} for
          #   more details.
          #
          #   @param account [String]
          #
          #   @param account_prefixed_id [String] The account prefixed ID.
          #
          #   @param months [Integer] Number of months of history to retrieve (1-60, default 12). Must be at least 1.
          #
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
