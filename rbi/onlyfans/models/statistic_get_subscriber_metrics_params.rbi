# typed: strong

module Onlyfans
  module Models
    class StatisticGetSubscriberMetricsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::StatisticGetSubscriberMetricsParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for the metrics.
      sig { returns(String) }
      attr_accessor :end_date

      # The start date for the metrics.
      sig { returns(String) }
      attr_accessor :start_date

      # Include paid and free fan metrics. Will slow down the response time, and might
      # time out if timeframe is too large. Default = `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :detailed

      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          detailed: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for the metrics.
        end_date:,
        # The start date for the metrics.
        start_date:,
        # Include paid and free fan metrics. Will slow down the response time, and might
        # time out if timeframe is too large. Default = `false`
        detailed: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: String,
            start_date: String,
            detailed: T.nilable(T::Boolean),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
