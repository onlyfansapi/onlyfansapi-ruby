# typed: strong

module Onlyfans
  module Models
    module Analytics
      class SummaryGetPeriodComparisonResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :breakdown

        sig { params(breakdown: T::Array[T.anything]).void }
        attr_writer :breakdown

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :chart_data

        sig { params(chart_data: T::Array[T.anything]).void }
        attr_writer :chart_data

        sig { returns(T.nilable(String)) }
        attr_reader :period_a_label

        sig { params(period_a_label: String).void }
        attr_writer :period_a_label

        sig { returns(T.nilable(String)) }
        attr_reader :period_b_label

        sig { params(period_b_label: String).void }
        attr_writer :period_b_label

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            breakdown: T::Array[T.anything],
            chart_data: T::Array[T.anything],
            period_a_label: String,
            period_b_label: String,
            summary:
              Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          breakdown: nil,
          chart_data: nil,
          period_a_label: nil,
          period_b_label: nil,
          summary: nil
        )
        end

        sig do
          override.returns(
            {
              breakdown: T::Array[T.anything],
              chart_data: T::Array[T.anything],
              period_a_label: String,
              period_b_label: String,
              summary:
                Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary
            }
          )
        end
        def to_hash
        end

        class Summary < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :change

          sig { params(change: Float).void }
          attr_writer :change

          sig { returns(T.nilable(Float)) }
          attr_reader :change_percentage

          sig { params(change_percentage: Float).void }
          attr_writer :change_percentage

          sig { returns(T.nilable(Float)) }
          attr_reader :period_a_total

          sig { params(period_a_total: Float).void }
          attr_writer :period_a_total

          sig { returns(T.nilable(Float)) }
          attr_reader :period_b_total

          sig { params(period_b_total: Float).void }
          attr_writer :period_b_total

          sig do
            params(
              change: Float,
              change_percentage: Float,
              period_a_total: Float,
              period_b_total: Float
            ).returns(T.attached_class)
          end
          def self.new(
            change: nil,
            change_percentage: nil,
            period_a_total: nil,
            period_b_total: nil
          )
          end

          sig do
            override.returns(
              {
                change: Float,
                change_percentage: Float,
                period_a_total: Float,
                period_b_total: Float
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
