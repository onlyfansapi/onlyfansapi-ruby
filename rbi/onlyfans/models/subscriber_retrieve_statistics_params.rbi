# typed: strong

module Onlyfans
  module Models
    class SubscriberRetrieveStatisticsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SubscriberRetrieveStatisticsParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for the period. Keep empty to calculate everything.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # The start date for the period. Keep empty to calculate everything.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Filter the subscriber statistics (default = total)
      sig do
        returns(
          T.nilable(
            Onlyfans::SubscriberRetrieveStatisticsParams::Type::OrSymbol
          )
        )
      end
      attr_accessor :type

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          type:
            T.nilable(
              Onlyfans::SubscriberRetrieveStatisticsParams::Type::OrSymbol
            ),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for the period. Keep empty to calculate everything.
        end_date: nil,
        # The start date for the period. Keep empty to calculate everything.
        start_date: nil,
        # Filter the subscriber statistics (default = total)
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: T.nilable(String),
            start_date: T.nilable(String),
            type:
              T.nilable(
                Onlyfans::SubscriberRetrieveStatisticsParams::Type::OrSymbol
              ),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter the subscriber statistics (default = total)
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::SubscriberRetrieveStatisticsParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL =
          T.let(
            :total,
            Onlyfans::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
          )
        RENEW =
          T.let(
            :renew,
            Onlyfans::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
          )
        NEW =
          T.let(
            :new,
            Onlyfans::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
