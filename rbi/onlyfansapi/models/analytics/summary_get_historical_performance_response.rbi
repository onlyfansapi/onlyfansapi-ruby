# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      class SummaryGetHistoricalPerformanceResponseItem < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem,
              Onlyfansapi::Internal::AnyHash
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
          Onlyfansapi::Internal::Type::ArrayOf[
            Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem
          ],
          Onlyfansapi::Internal::Type::Converter
        )
    end
  end
end
