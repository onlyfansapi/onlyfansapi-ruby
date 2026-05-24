# typed: strong

module Onlyfansapi
  module Models
    class PayoutUpdateFrequencyParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PayoutUpdateFrequencyParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The new payout frequency
      sig do
        returns(Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::OrSymbol)
      end
      attr_accessor :frequency

      sig do
        params(
          account: String,
          frequency:
            Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::OrSymbol,
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
              Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::OrSymbol,
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
            T.all(Symbol, Onlyfansapi::PayoutUpdateFrequencyParams::Frequency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANUAL =
          T.let(
            :manual,
            Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
