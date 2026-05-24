# typed: strong

module Onlyfansapi
  module Models
    module Engagement
      class MessageGetTopMessageParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Engagement::MessageGetTopMessageParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The end date for the period. Keep empty to retrieve until now. MUST BE DATE
        # AFTER `startDate`.
        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        # The start date for the period. Keep empty to retrieve from the model start date.
        sig { returns(T.nilable(String)) }
        attr_reader :start_date

        sig { params(start_date: String).void }
        attr_writer :start_date

        sig do
          params(
            account: String,
            end_date: String,
            start_date: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The end date for the period. Keep empty to retrieve until now. MUST BE DATE
          # AFTER `startDate`.
          end_date: nil,
          # The start date for the period. Keep empty to retrieve from the model start date.
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
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
