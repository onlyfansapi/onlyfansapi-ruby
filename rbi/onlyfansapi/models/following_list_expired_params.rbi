# typed: strong

module Onlyfansapi
  module Models
    class FollowingListExpiredParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::FollowingListExpiredParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig do
        returns(T.nilable(Onlyfansapi::FollowingListExpiredParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Onlyfansapi::FollowingListExpiredParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Number of followings to return (1-50). Must be at least 1. Must not be greater
      # than 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Pagination offset. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          filter: Onlyfansapi::FollowingListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # Number of followings to return (1-50). Must be at least 1. Must not be greater
        # than 50.
        limit: nil,
        # Pagination offset. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfansapi::FollowingListExpiredParams::Filter,
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
              Onlyfansapi::FollowingListExpiredParams::Filter,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # Filter by online status (1 for online, 0 for offline, null for all).
        sig do
          returns(
            T.nilable(
              Onlyfansapi::FollowingListExpiredParams::Filter::Online::OrInteger
            )
          )
        end
        attr_accessor :online

        # Filter by paid status (1 for paid, 0 for free, null for all).
        sig do
          returns(
            T.nilable(
              Onlyfansapi::FollowingListExpiredParams::Filter::Paid::OrInteger
            )
          )
        end
        attr_accessor :paid

        sig do
          params(
            online:
              T.nilable(
                Onlyfansapi::FollowingListExpiredParams::Filter::Online::OrInteger
              ),
            paid:
              T.nilable(
                Onlyfansapi::FollowingListExpiredParams::Filter::Paid::OrInteger
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by online status (1 for online, 0 for offline, null for all).
          online: nil,
          # Filter by paid status (1 for paid, 0 for free, null for all).
          paid: nil
        )
        end

        sig do
          override.returns(
            {
              online:
                T.nilable(
                  Onlyfansapi::FollowingListExpiredParams::Filter::Online::OrInteger
                ),
              paid:
                T.nilable(
                  Onlyfansapi::FollowingListExpiredParams::Filter::Paid::OrInteger
                )
            }
          )
        end
        def to_hash
        end

        # Filter by online status (1 for online, 0 for offline, null for all).
        module Online
          extend Onlyfansapi::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(
                Integer,
                Onlyfansapi::FollowingListExpiredParams::Filter::Online
              )
            end
          OrInteger = T.type_alias { Integer }

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::FollowingListExpiredParams::Filter::Online::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end

        # Filter by paid status (1 for paid, 0 for free, null for all).
        module Paid
          extend Onlyfansapi::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(
                Integer,
                Onlyfansapi::FollowingListExpiredParams::Filter::Paid
              )
            end
          OrInteger = T.type_alias { Integer }

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::FollowingListExpiredParams::Filter::Paid::TaggedInteger
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
