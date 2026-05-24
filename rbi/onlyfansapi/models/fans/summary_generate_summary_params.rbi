# typed: strong

module Onlyfansapi
  module Models
    module Fans
      class SummaryGenerateSummaryParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Fans::SummaryGenerateSummaryParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :fan_id

        # Set to true to regenerate an existing completed summary.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :regenerate

        sig { params(regenerate: T::Boolean).void }
        attr_writer :regenerate

        sig do
          params(
            account: String,
            fan_id: String,
            regenerate: T::Boolean,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          fan_id:,
          # Set to true to regenerate an existing completed summary.
          regenerate: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              fan_id: String,
              regenerate: T::Boolean,
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
