# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Chargebacks#calculate_ratio
    class ChargebackCalculateRatioParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the chargeback ratio. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute start_date
      #   The start date for the chargeback ratio. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!method initialize(account:, end_date: nil, start_date: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the chargeback ratio. Keep empty to get all.
      #
      #   @param start_date [String] The start date for the chargeback ratio. Keep empty to get all.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
