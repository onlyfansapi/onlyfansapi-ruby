# typed: strong

module Onlyfans
  module Models
    class PayoutUpdateFrequencyParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::PayoutUpdateFrequencyParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The new payout frequency
      sig do
        returns(Onlyfans::PayoutUpdateFrequencyParams::Frequency::OrSymbol)
      end
      attr_accessor :frequency

      sig do
        params(
          account: String,
          frequency: Onlyfans::PayoutUpdateFrequencyParams::Frequency::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
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
              Onlyfans::PayoutUpdateFrequencyParams::Frequency::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The new payout frequency
      module Frequency
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::PayoutUpdateFrequencyParams::Frequency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANUAL =
          T.let(
            :manual,
            Onlyfans::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            Onlyfans::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Onlyfans::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::PayoutUpdateFrequencyParams::Frequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
