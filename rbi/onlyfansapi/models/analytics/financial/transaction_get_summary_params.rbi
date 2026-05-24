# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class TransactionGetSummaryParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Analytics::Financial::TransactionGetSummaryParams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          # Array of account prefixed IDs
          sig { returns(T::Array[String]) }
          attr_accessor :account_ids

          # The end date (ISO 8601 format)
          sig { returns(String) }
          attr_accessor :end_date

          # The start date (ISO 8601 format)
          sig { returns(String) }
          attr_accessor :start_date

          sig do
            params(
              account_ids: T::Array[String],
              end_date: String,
              start_date: String,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of account prefixed IDs
            account_ids:,
            # The end date (ISO 8601 format)
            end_date:,
            # The start date (ISO 8601 format)
            start_date:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account_ids: T::Array[String],
                end_date: String,
                start_date: String,
                request_options: Onlyfansapi::RequestOptions
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
