# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Statistics#get_subscriber_metrics
    class StatisticGetSubscriberMetricsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the metrics.
      #
      #   @return [String]
      required :end_date, String

      # @!attribute start_date
      #   The start date for the metrics.
      #
      #   @return [String]
      required :start_date, String

      # @!attribute detailed
      #   Include paid and free fan metrics. Will slow down the response time, and might
      #   time out if timeframe is too large. Default = `false`
      #
      #   @return [Boolean, nil]
      optional :detailed, Onlyfans::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, end_date:, start_date:, detailed: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::StatisticGetSubscriberMetricsParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the metrics.
      #
      #   @param start_date [String] The start date for the metrics.
      #
      #   @param detailed [Boolean, nil] Include paid and free fan metrics. Will slow down the response time, and might t
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
