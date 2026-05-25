# typed: strong

module Onlyfans
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetProfitabilityParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Analytics::Financial::ProfitabilityGetProfitabilityParams,
                Onlyfans::Internal::AnyHash
              )
            end

          # Array of account prefixed IDs
          sig { returns(T::Array[String]) }
          attr_accessor :account_ids

          # The month to calculate profitability for (1-12)
          sig { returns(Integer) }
          attr_accessor :month

          # The year to calculate profitability for
          sig { returns(Integer) }
          attr_accessor :year

          sig do
            params(
              account_ids: T::Array[String],
              month: Integer,
              year: Integer,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of account prefixed IDs
            account_ids:,
            # The month to calculate profitability for (1-12)
            month:,
            # The year to calculate profitability for
            year:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account_ids: T::Array[String],
                month: Integer,
                year: Integer,
                request_options: Onlyfans::RequestOptions
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
