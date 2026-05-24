# typed: strong

module Onlyfansapi
  module Models
    class PayoutUpdatePayoutFrequencyParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PayoutUpdatePayoutFrequencyParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The new payout frequency
      sig do
        returns(
          Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::OrSymbol
        )
      end
      attr_accessor :frequency

      sig do
        params(
          account: String,
          frequency:
            Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The new payout frequency
        frequency:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            frequency:
              Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The new payout frequency
      module Frequency
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANUAL =
          T.let(
            :manual,
            Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
