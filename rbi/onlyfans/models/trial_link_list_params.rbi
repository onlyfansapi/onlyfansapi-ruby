# typed: strong

module Onlyfans
  module Models
    class TrialLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::TrialLinkListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for trial links. Keep empty to get all. Must not be greater than
      # 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # Field to sort by. Default `create_date`.
      sig { returns(T.nilable(Onlyfans::TrialLinkListParams::Field::OrSymbol)) }
      attr_reader :field

      sig { params(field: Onlyfans::TrialLinkListParams::Field::OrSymbol).void }
      attr_writer :field

      # The number of trial links to return. Default `10`. Must be at least 1. Must not
      # be greater than 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Sort direction. Default `desc`.
      sig { returns(T.nilable(Onlyfans::TrialLinkListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Onlyfans::TrialLinkListParams::Sort::OrSymbol).void }
      attr_writer :sort

      # The start date for trial links. Keep empty to get all. Must not be greater than
      # 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Wait for revenue calculation instead of processing it in the background.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          field: Onlyfans::TrialLinkListParams::Field::OrSymbol,
          limit: Integer,
          offset: Integer,
          sort: Onlyfans::TrialLinkListParams::Sort::OrSymbol,
          start_date: T.nilable(String),
          synchronous: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for trial links. Keep empty to get all. Must not be greater than
        # 255 characters.
        end_date: nil,
        # Field to sort by. Default `create_date`.
        field: nil,
        # The number of trial links to return. Default `10`. Must be at least 1. Must not
        # be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        # Sort direction. Default `desc`.
        sort: nil,
        # The start date for trial links. Keep empty to get all. Must not be greater than
        # 255 characters.
        start_date: nil,
        # Wait for revenue calculation instead of processing it in the background.
        synchronous: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: T.nilable(String),
            field: Onlyfans::TrialLinkListParams::Field::OrSymbol,
            limit: Integer,
            offset: Integer,
            sort: Onlyfans::TrialLinkListParams::Sort::OrSymbol,
            start_date: T.nilable(String),
            synchronous: T::Boolean,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Field to sort by. Default `create_date`.
      module Field
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::TrialLinkListParams::Field) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE_DATE =
          T.let(
            :create_date,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        EXPIRE_DATE =
          T.let(
            :expire_date,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        SUBSCRIBE_COUNTS =
          T.let(
            :subscribe_counts,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        SUBSCRIBE_DAYS =
          T.let(
            :subscribe_days,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        CLAIMS_COUNT =
          T.let(
            :claims_count,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::TrialLinkListParams::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort direction. Default `desc`.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::TrialLinkListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Onlyfans::TrialLinkListParams::Sort::TaggedSymbol)
        DESC = T.let(:desc, Onlyfans::TrialLinkListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::TrialLinkListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
