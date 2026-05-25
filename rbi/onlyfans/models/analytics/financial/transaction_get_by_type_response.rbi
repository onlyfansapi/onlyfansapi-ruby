# typed: strong

module Onlyfans
  module Models
    module Analytics
      module Financial
        class TransactionGetByTypeResponseItem < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Analytics::Financial::TransactionGetByTypeResponseItem,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :count

          sig { params(count: Integer).void }
          attr_writer :count

          sig { returns(T.nilable(Float)) }
          attr_reader :total

          sig { params(total: Float).void }
          attr_writer :total

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(count: Integer, total: Float, type: String).returns(
              T.attached_class
            )
          end
          def self.new(count: nil, total: nil, type: nil)
          end

          sig do
            override.returns({ count: Integer, total: Float, type: String })
          end
          def to_hash
          end
        end

        TransactionGetByTypeResponse =
          T.let(
            Onlyfans::Internal::Type::ArrayOf[
              Onlyfans::Models::Analytics::Financial::TransactionGetByTypeResponseItem
            ],
            Onlyfans::Internal::Type::Converter
          )
      end
    end
  end
end
