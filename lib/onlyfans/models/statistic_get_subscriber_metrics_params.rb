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

      # @!attribute detailed_type
      #   Use only with `detailed=true` - otherwise, it has no effect. Filter the
      #   subscriber statistics (default = total)
      #
      #   @return [Symbol, Onlyfans::Models::StatisticGetSubscriberMetricsParams::DetailedType, nil]
      optional :detailed_type,
               enum: -> { Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType },
               nil?: true

      # @!method initialize(account:, end_date:, start_date:, detailed: nil, detailed_type: nil, request_options: {})
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
      #   @param detailed_type [Symbol, Onlyfans::Models::StatisticGetSubscriberMetricsParams::DetailedType, nil] Use only with `detailed=true` - otherwise, it has no effect. Filter the subscrib
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Use only with `detailed=true` - otherwise, it has no effect. Filter the
      # subscriber statistics (default = total)
      module DetailedType
        extend Onlyfans::Internal::Type::Enum

        TOTAL = :total
        RENEW = :renew
        NEW = :new

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
