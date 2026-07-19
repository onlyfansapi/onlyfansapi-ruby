# typed: strong

module Onlyfans
  module Models
    class SharedTrialLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SharedTrialLinkListParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of shared trial links to return. Default `10`. Must be at least 1.
      # Must not be greater than 100.
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
        returns(
          T.nilable(Onlyfans::SharedTrialLinkListParams::Pagination::OrInteger)
        )
      end
      attr_reader :pagination

      sig do
        params(
          pagination: Onlyfans::SharedTrialLinkListParams::Pagination::OrInteger
        ).void
      end
      attr_writer :pagination

      # Wait for the database sync instead of processing it in the background.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          pagination:
            Onlyfans::SharedTrialLinkListParams::Pagination::OrInteger,
          synchronous: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of shared trial links to return. Default `10`. Must be at least 1.
        # Must not be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        pagination: nil,
        # Wait for the database sync instead of processing it in the background.
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
            pagination:
              Onlyfans::SharedTrialLinkListParams::Pagination::OrInteger,
            synchronous: T::Boolean,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Pagination
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::SharedTrialLinkListParams::Pagination)
          end
        OrInteger = T.type_alias { Integer }

        PAGINATION_0 =
          T.let(
            0,
            Onlyfans::SharedTrialLinkListParams::Pagination::TaggedInteger
          )
        PAGINATION_1 =
          T.let(
            1,
            Onlyfans::SharedTrialLinkListParams::Pagination::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SharedTrialLinkListParams::Pagination::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
