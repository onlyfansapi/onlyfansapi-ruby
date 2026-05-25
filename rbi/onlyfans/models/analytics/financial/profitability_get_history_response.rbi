# typed: strong

module Onlyfans
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetHistoryResponseItem < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :gross_revenue

          sig { params(gross_revenue: Float).void }
          attr_writer :gross_revenue

          sig { returns(T.nilable(Float)) }
          attr_reader :margin

          sig { params(margin: Float).void }
          attr_writer :margin

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { params(month: Integer).void }
          attr_writer :month

          sig { returns(T.nilable(Float)) }
          attr_reader :net_revenue

          sig { params(net_revenue: Float).void }
          attr_writer :net_revenue

          sig { returns(T.nilable(Float)) }
          attr_reader :profit

          sig { params(profit: Float).void }
          attr_writer :profit

          sig { returns(T.nilable(Integer)) }
          attr_reader :year

          sig { params(year: Integer).void }
          attr_writer :year

          sig do
            params(
              gross_revenue: Float,
              margin: Float,
              month: Integer,
              net_revenue: Float,
              profit: Float,
              year: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            gross_revenue: nil,
            margin: nil,
            month: nil,
            net_revenue: nil,
            profit: nil,
            year: nil
          )
          end

          sig do
            override.returns(
              {
                gross_revenue: Float,
                margin: Float,
                month: Integer,
                net_revenue: Float,
                profit: Float,
                year: Integer
              }
            )
          end
          def to_hash
          end
        end

        ProfitabilityGetHistoryResponse =
          T.let(
            Onlyfans::Internal::Type::ArrayOf[
              Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem
            ],
            Onlyfans::Internal::Type::Converter
          )
      end
    end
  end
end
