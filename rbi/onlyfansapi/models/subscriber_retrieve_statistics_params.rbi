# typed: strong

module Onlyfansapi
  module Models
    class SubscriberRetrieveStatisticsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SubscriberRetrieveStatisticsParams,
            Onlyfansapi::Internal::AnyHash
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
            Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::OrSymbol
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
              Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::OrSymbol
            ),
          request_options: Onlyfansapi::RequestOptions::OrHash
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
                Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::OrSymbol
              ),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter the subscriber statistics (default = total)
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::SubscriberRetrieveStatisticsParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL =
          T.let(
            :total,
            Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
          )
        RENEW =
          T.let(
            :renew,
            Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
          )
        NEW =
          T.let(
            :new,
            Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::SubscriberRetrieveStatisticsParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
