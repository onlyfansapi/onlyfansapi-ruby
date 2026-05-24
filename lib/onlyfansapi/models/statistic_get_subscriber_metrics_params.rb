# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Statistics#get_subscriber_metrics
    class StatisticGetSubscriberMetricsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      optional :detailed, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, end_date:, start_date:, detailed: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::StatisticGetSubscriberMetricsParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the metrics.
      #
      #   @param start_date [String] The start date for the metrics.
      #
      #   @param detailed [Boolean, nil] Include paid and free fan metrics. Will slow down the response time, and might t
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
