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

      # Use only with `detailed=true` - otherwise, it has no effect. Filter the
      # subscriber statistics (default = total)
      sig do
        returns(
          T.nilable(
            Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::OrSymbol
          )
        )
      end
      attr_accessor :detailed_type

      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          detailed: T.nilable(T::Boolean),
          detailed_type:
            T.nilable(
              Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::OrSymbol
            ),
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
        # Use only with `detailed=true` - otherwise, it has no effect. Filter the
        # subscriber statistics (default = total)
        detailed_type: nil,
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
            detailed_type:
              T.nilable(
                Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::OrSymbol
              ),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Use only with `detailed=true` - otherwise, it has no effect. Filter the
      # subscriber statistics (default = total)
      module DetailedType
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL =
          T.let(
            :total,
            Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::TaggedSymbol
          )
        RENEW =
          T.let(
            :renew,
            Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::TaggedSymbol
          )
        NEW =
          T.let(
            :new,
            Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::StatisticGetSubscriberMetricsParams::DetailedType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
