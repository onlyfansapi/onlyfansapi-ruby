# typed: strong

module Onlyfansapi
  module Models
    class StatisticGetOverviewParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StatisticGetOverviewParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for the statistics. Keep empty to retrieve until now.
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # The start date for the statistics. Keep empty to retrieve from the model's start
      # date.
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      # The type of statistics to retrieve (default = empty)
      sig do
        returns(
          T.nilable(Onlyfansapi::StatisticGetOverviewParams::Type::OrSymbol)
        )
      end
      attr_accessor :type

      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          type:
            T.nilable(Onlyfansapi::StatisticGetOverviewParams::Type::OrSymbol),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for the statistics. Keep empty to retrieve until now.
        end_date: nil,
        # The start date for the statistics. Keep empty to retrieve from the model's start
        # date.
        start_date: nil,
        # The type of statistics to retrieve (default = empty)
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: String,
            start_date: String,
            type:
              T.nilable(
                Onlyfansapi::StatisticGetOverviewParams::Type::OrSymbol
              ),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of statistics to retrieve (default = empty)
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::StatisticGetOverviewParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FANS =
          T.let(
            :fans,
            Onlyfansapi::StatisticGetOverviewParams::Type::TaggedSymbol
          )
        VISITORS =
          T.let(
            :visitors,
            Onlyfansapi::StatisticGetOverviewParams::Type::TaggedSymbol
          )
        POSTS =
          T.let(
            :posts,
            Onlyfansapi::StatisticGetOverviewParams::Type::TaggedSymbol
          )
        MESSAGES =
          T.let(
            :messages,
            Onlyfansapi::StatisticGetOverviewParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::StatisticGetOverviewParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
