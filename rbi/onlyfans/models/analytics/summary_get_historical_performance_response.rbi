# typed: strong

module Onlyfans
  module Models
    module Analytics
      class SummaryGetHistoricalPerformanceResponseItem < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :period

        sig { params(period: String).void }
        attr_writer :period

        sig { returns(T.nilable(Float)) }
        attr_reader :value

        sig { params(value: Float).void }
        attr_writer :value

        sig { params(period: String, value: Float).returns(T.attached_class) }
        def self.new(period: nil, value: nil)
        end

        sig { override.returns({ period: String, value: Float }) }
        def to_hash
        end
      end

      SummaryGetHistoricalPerformanceResponse =
        T.let(
          Onlyfans::Internal::Type::ArrayOf[
            Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem
          ],
          Onlyfans::Internal::Type::Converter
        )
    end
  end
end
