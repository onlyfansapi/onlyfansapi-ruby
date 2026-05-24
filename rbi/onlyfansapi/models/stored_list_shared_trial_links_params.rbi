# typed: strong

module Onlyfansapi
  module Models
    class StoredListSharedTrialLinksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StoredListSharedTrialLinksParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig do
        returns(
          T.nilable(Onlyfansapi::StoredListSharedTrialLinksParams::Filter)
        )
      end
      attr_reader :filter

      sig do
        params(
          filter: Onlyfansapi::StoredListSharedTrialLinksParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # The number of shared trial links to return. Default `10`. Must be at least 1.
      # Must not be greater than 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          filter: Onlyfansapi::StoredListSharedTrialLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # The number of shared trial links to return. Default `10`. Must be at least 1.
        # Must not be greater than 1000.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfansapi::StoredListSharedTrialLinksParams::Filter,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::StoredListSharedTrialLinksParams::Filter,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # Must not be greater than 255 characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :search

        # Must not be greater than 50 characters.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(search: T.nilable(String), tags: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Must not be greater than 255 characters.
          search: nil,
          # Must not be greater than 50 characters.
          tags: nil
        )
        end

        sig do
          override.returns(
            { search: T.nilable(String), tags: T::Array[String] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
