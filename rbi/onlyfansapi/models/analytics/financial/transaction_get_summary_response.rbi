# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class TransactionGetSummaryResponse < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Analytics::Financial::TransactionGetSummaryResponse,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :disputed_count

          sig { params(disputed_count: Integer).void }
          attr_writer :disputed_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :refunded_count

          sig { params(refunded_count: Integer).void }
          attr_writer :refunded_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :succeeded_count

          sig { params(succeeded_count: Integer).void }
          attr_writer :succeeded_count

          sig { returns(T.nilable(Float)) }
          attr_reader :total_fees

          sig { params(total_fees: Float).void }
          attr_writer :total_fees

          sig { returns(T.nilable(Float)) }
          attr_reader :total_gross

          sig { params(total_gross: Float).void }
          attr_writer :total_gross

          sig { returns(T.nilable(Float)) }
          attr_reader :total_net

          sig { params(total_net: Float).void }
          attr_writer :total_net

          sig do
            params(
              disputed_count: Integer,
              refunded_count: Integer,
              succeeded_count: Integer,
              total_fees: Float,
              total_gross: Float,
              total_net: Float
            ).returns(T.attached_class)
          end
          def self.new(
            disputed_count: nil,
            refunded_count: nil,
            succeeded_count: nil,
            total_fees: nil,
            total_gross: nil,
            total_net: nil
          )
          end

          sig do
            override.returns(
              {
                disputed_count: Integer,
                refunded_count: Integer,
                succeeded_count: Integer,
                total_fees: Float,
                total_gross: Float,
                total_net: Float
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
