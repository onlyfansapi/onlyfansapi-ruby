# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetHistoryParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Analytics::Financial::ProfitabilityGetHistoryParams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The account prefixed ID.
          sig { returns(String) }
          attr_accessor :account_prefixed_id

          # Number of months of history to retrieve (1-60, default 12). Must be at least 1.
          # Must not be greater than 60.
          sig { returns(T.nilable(Integer)) }
          attr_reader :months

          sig { params(months: Integer).void }
          attr_writer :months

          sig do
            params(
              account: String,
              account_prefixed_id: String,
              months: Integer,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The account prefixed ID.
            account_prefixed_id:,
            # Number of months of history to retrieve (1-60, default 12). Must be at least 1.
            # Must not be greater than 60.
            months: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                account_prefixed_id: String,
                months: Integer,
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
