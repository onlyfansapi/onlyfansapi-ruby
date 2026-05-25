# typed: strong

module Onlyfans
  module Models
    class ReleaseFormListTaggableUsersParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::ReleaseFormListTaggableUsersParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Filter users by type: `all` or `pending`.
      sig do
        returns(
          T.nilable(
            Onlyfans::ReleaseFormListTaggableUsersParams::Filter::OrSymbol
          )
        )
      end
      attr_accessor :filter

      # Number of users to return per page (1-50). Must be at least 1. Must not be
      # greater than 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter users by name or username.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Number of users to skip for pagination. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Sort field: `date` or `name`.
      sig do
        returns(
          T.nilable(
            Onlyfans::ReleaseFormListTaggableUsersParams::Sort::OrSymbol
          )
        )
      end
      attr_accessor :sort

      # Sort direction: `desc` or `asc`.
      sig do
        returns(
          T.nilable(
            Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection::OrSymbol
          )
        )
      end
      attr_accessor :sort_direction

      sig do
        params(
          account: String,
          filter:
            T.nilable(
              Onlyfans::ReleaseFormListTaggableUsersParams::Filter::OrSymbol
            ),
          limit: Integer,
          name: T.nilable(String),
          offset: Integer,
          sort:
            T.nilable(
              Onlyfans::ReleaseFormListTaggableUsersParams::Sort::OrSymbol
            ),
          sort_direction:
            T.nilable(
              Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection::OrSymbol
            ),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Filter users by type: `all` or `pending`.
        filter: nil,
        # Number of users to return per page (1-50). Must be at least 1. Must not be
        # greater than 50.
        limit: nil,
        # Filter users by name or username.
        name: nil,
        # Number of users to skip for pagination. Must be at least 0.
        offset: nil,
        # Sort field: `date` or `name`.
        sort: nil,
        # Sort direction: `desc` or `asc`.
        sort_direction: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter:
              T.nilable(
                Onlyfans::ReleaseFormListTaggableUsersParams::Filter::OrSymbol
              ),
            limit: Integer,
            name: T.nilable(String),
            offset: Integer,
            sort:
              T.nilable(
                Onlyfans::ReleaseFormListTaggableUsersParams::Sort::OrSymbol
              ),
            sort_direction:
              T.nilable(
                Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection::OrSymbol
              ),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter users by type: `all` or `pending`.
      module Filter
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::ReleaseFormListTaggableUsersParams::Filter)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :all,
            Onlyfans::ReleaseFormListTaggableUsersParams::Filter::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Onlyfans::ReleaseFormListTaggableUsersParams::Filter::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::ReleaseFormListTaggableUsersParams::Filter::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Sort field: `date` or `name`.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::ReleaseFormListTaggableUsersParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DATE =
          T.let(
            :date,
            Onlyfans::ReleaseFormListTaggableUsersParams::Sort::TaggedSymbol
          )
        NAME =
          T.let(
            :name,
            Onlyfans::ReleaseFormListTaggableUsersParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::ReleaseFormListTaggableUsersParams::Sort::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Sort direction: `desc` or `asc`.
      module SortDirection
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC =
          T.let(
            :desc,
            Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection::TaggedSymbol
          )
        ASC =
          T.let(
            :asc,
            Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
