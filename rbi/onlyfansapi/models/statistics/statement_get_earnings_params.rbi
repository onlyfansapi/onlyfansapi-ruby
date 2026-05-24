# typed: strong

module Onlyfansapi
  module Models
    module Statistics
      class StatementGetEarningsParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Statistics::StatementGetEarningsParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The start date for the period
        sig { returns(String) }
        attr_accessor :start_date

        # The end date for the period.
        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        sig do
          returns(
            T.nilable(
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            account: String,
            start_date: String,
            end_date: String,
            type:
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The start date for the period
          start_date:,
          # The end date for the period.
          end_date: nil,
          # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              start_date: String,
              end_date: String,
              type:
                Onlyfansapi::Statistics::StatementGetEarningsParams::Type::OrSymbol,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        module Type
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Statistics::StatementGetEarningsParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOTAL =
            T.let(
              :total,
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          SUBSCRIBES =
            T.let(
              :subscribes,
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          TIPS =
            T.let(
              :tips,
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          POST =
            T.let(
              :post,
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          MESSAGES =
            T.let(
              :messages,
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          STREAM =
            T.let(
              :stream,
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
