# typed: strong

module Onlyfansapi
  module Models
    class TrialLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::TrialLinkListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of trial links to return. Default `10`
      sig { returns(Integer) }
      attr_accessor :limit

      # The offset used for pagination. Default `0`
      sig { returns(Integer) }
      attr_accessor :offset

      # Sort the results by a field. Default `create_date`
      sig do
        returns(T.nilable(Onlyfansapi::TrialLinkListParams::Field::OrSymbol))
      end
      attr_accessor :field

      # Sort the results. Default `desc`
      sig do
        returns(T.nilable(Onlyfansapi::TrialLinkListParams::Sort::OrSymbol))
      end
      attr_accessor :sort

      # Wait for the revenue data to finish processing, instead of processing in the
      # background. **Will result in longer response times, use with caution**. Default
      # `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :synchronous

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          field: T.nilable(Onlyfansapi::TrialLinkListParams::Field::OrSymbol),
          sort: T.nilable(Onlyfansapi::TrialLinkListParams::Sort::OrSymbol),
          synchronous: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of trial links to return. Default `10`
        limit:,
        # The offset used for pagination. Default `0`
        offset:,
        # Sort the results by a field. Default `create_date`
        field: nil,
        # Sort the results. Default `desc`
        sort: nil,
        # Wait for the revenue data to finish processing, instead of processing in the
        # background. **Will result in longer response times, use with caution**. Default
        # `false`
        synchronous: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            offset: Integer,
            field: T.nilable(Onlyfansapi::TrialLinkListParams::Field::OrSymbol),
            sort: T.nilable(Onlyfansapi::TrialLinkListParams::Sort::OrSymbol),
            synchronous: T.nilable(T::Boolean),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort the results by a field. Default `create_date`
      module Field
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::TrialLinkListParams::Field)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE_DATE =
          T.let(
            :create_date,
            Onlyfansapi::TrialLinkListParams::Field::TaggedSymbol
          )
        EXPIRE_DATE =
          T.let(
            :expire_date,
            Onlyfansapi::TrialLinkListParams::Field::TaggedSymbol
          )
        SUBSCRIBE_COUNTS =
          T.let(
            :subscribe_counts,
            Onlyfansapi::TrialLinkListParams::Field::TaggedSymbol
          )
        SUBSCRIBE_DAYS =
          T.let(
            :subscribe_days,
            Onlyfansapi::TrialLinkListParams::Field::TaggedSymbol
          )
        CLAIMS_COUNT =
          T.let(
            :claims_count,
            Onlyfansapi::TrialLinkListParams::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::TrialLinkListParams::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort the results. Default `desc`
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::TrialLinkListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC =
          T.let(:desc, Onlyfansapi::TrialLinkListParams::Sort::TaggedSymbol)
        ASC = T.let(:asc, Onlyfansapi::TrialLinkListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::TrialLinkListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
