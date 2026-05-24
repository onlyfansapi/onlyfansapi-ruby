# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#retrieve_earning_statistics
    class PayoutRetrieveEarningStatisticsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for earning statistics. Keep empty to get all earnings.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute start_date
      #   The start date for earning statistics. Keep empty to get all earnings.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!method initialize(account:, end_date: nil, start_date: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String, nil] The end date for earning statistics. Keep empty to get all earnings.
      #
      #   @param start_date [String, nil] The start date for earning statistics. Keep empty to get all earnings.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
