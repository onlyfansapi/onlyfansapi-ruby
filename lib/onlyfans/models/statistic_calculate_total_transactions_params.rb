# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Statistics#calculate_total_transactions
    class StatisticCalculateTotalTransactionsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the period. Keep empty to calculate everything.
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute start_date
      #   The start date for the period. Keep empty to calculate everything.
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!method initialize(account:, end_date: nil, start_date: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the period. Keep empty to calculate everything.
      #
      #   @param start_date [String] The start date for the period. Keep empty to calculate everything.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
