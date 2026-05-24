# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetProfitabilityResponseItem < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :commission

          sig { params(commission: Float).void }
          attr_writer :commission

          sig { returns(T.nilable(Integer)) }
          attr_reader :creator_id

          sig { params(creator_id: Integer).void }
          attr_writer :creator_id

          sig { returns(T.nilable(Float)) }
          attr_reader :gross_revenue

          sig { params(gross_revenue: Float).void }
          attr_writer :gross_revenue

          sig { returns(T.nilable(Float)) }
          attr_reader :margin

          sig { params(margin: Float).void }
          attr_writer :margin

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(Float)) }
          attr_reader :net_revenue

          sig { params(net_revenue: Float).void }
          attr_writer :net_revenue

          sig { returns(T.nilable(Float)) }
          attr_reader :profit

          sig { params(profit: Float).void }
          attr_writer :profit

          sig { returns(T.nilable(Float)) }
          attr_reader :total_costs

          sig { params(total_costs: Float).void }
          attr_writer :total_costs

          sig do
            params(
              commission: Float,
              creator_id: Integer,
              gross_revenue: Float,
              margin: Float,
              name: String,
              net_revenue: Float,
              profit: Float,
              total_costs: Float
            ).returns(T.attached_class)
          end
          def self.new(
            commission: nil,
            creator_id: nil,
            gross_revenue: nil,
            margin: nil,
            name: nil,
            net_revenue: nil,
            profit: nil,
            total_costs: nil
          )
          end

          sig do
            override.returns(
              {
                commission: Float,
                creator_id: Integer,
                gross_revenue: Float,
                margin: Float,
                name: String,
                net_revenue: Float,
                profit: Float,
                total_costs: Float
              }
            )
          end
          def to_hash
          end
        end

        ProfitabilityGetProfitabilityResponse =
          T.let(
            Onlyfansapi::Internal::Type::ArrayOf[
              Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem
            ],
            Onlyfansapi::Internal::Type::Converter
          )
      end
    end
  end
end
