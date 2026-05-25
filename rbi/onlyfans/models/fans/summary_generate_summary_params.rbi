# typed: strong

module Onlyfans
  module Models
    module Fans
      class SummaryGenerateSummaryParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Fans::SummaryGenerateSummaryParams,
              Onlyfans::Internal::AnyHash
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
            request_options: Onlyfans::RequestOptions::OrHash
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
