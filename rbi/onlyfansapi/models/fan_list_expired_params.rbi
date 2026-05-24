# typed: strong

module Onlyfansapi
  module Models
    class FanListExpiredParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::FanListExpiredParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(T.nilable(Onlyfansapi::FanListExpiredParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Onlyfansapi::FanListExpiredParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Number of fans to return (1-50). Must be at least 1. Must not be greater
      # than 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of fans to skip. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Search within fan name/username.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Filter by fan type.
      sig do
        returns(T.nilable(Onlyfansapi::FanListExpiredParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Onlyfansapi::FanListExpiredParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          account: String,
          filter: Onlyfansapi::FanListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          type: Onlyfansapi::FanListExpiredParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # Number of fans to return (1-50). Must be at least 1. Must not be greater
        # than 20.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Search within fan name/username.
        query: nil,
        # Filter by fan type.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfansapi::FanListExpiredParams::Filter,
            limit: Integer,
            offset: Integer,
            query: T.nilable(String),
            type: Onlyfansapi::FanListExpiredParams::Type::OrSymbol,
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
              Onlyfansapi::FanListExpiredParams::Filter,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # Filter by minimum subscription duration in months. Must be at least 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration

        sig { params(duration: Integer).void }
        attr_writer :duration

        # Filter by online status (`1` for online fans).
        sig do
          returns(
            T.nilable(
              Onlyfansapi::FanListExpiredParams::Filter::Online::OrInteger
            )
          )
        end
        attr_accessor :online

        # Filter by minimum tips. Must be at least 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :tips

        sig { params(tips: Integer).void }
        attr_writer :tips

        # Filter by minimum amount total spent by a fan. Must be at least 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_spent

        sig { params(total_spent: Integer).void }
        attr_writer :total_spent

        sig do
          params(
            duration: Integer,
            online:
              T.nilable(
                Onlyfansapi::FanListExpiredParams::Filter::Online::OrInteger
              ),
            tips: Integer,
            total_spent: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by minimum subscription duration in months. Must be at least 0.
          duration: nil,
          # Filter by online status (`1` for online fans).
          online: nil,
          # Filter by minimum tips. Must be at least 0.
          tips: nil,
          # Filter by minimum amount total spent by a fan. Must be at least 0.
          total_spent: nil
        )
        end

        sig do
          override.returns(
            {
              duration: Integer,
              online:
                T.nilable(
                  Onlyfansapi::FanListExpiredParams::Filter::Online::OrInteger
                ),
              tips: Integer,
              total_spent: Integer
            }
          )
        end
        def to_hash
        end

        # Filter by online status (`1` for online fans).
        module Online
          extend Onlyfansapi::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(Integer, Onlyfansapi::FanListExpiredParams::Filter::Online)
            end
          OrInteger = T.type_alias { Integer }

          ONLINE_1 =
            T.let(
              1,
              Onlyfansapi::FanListExpiredParams::Filter::Online::TaggedInteger
            )
          ONLINE_0 =
            T.let(
              0,
              Onlyfansapi::FanListExpiredParams::Filter::Online::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::FanListExpiredParams::Filter::Online::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end
      end

      # Filter by fan type.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::FanListExpiredParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Onlyfansapi::FanListExpiredParams::Type::TaggedSymbol)
        EXPIRED =
          T.let(:expired, Onlyfansapi::FanListExpiredParams::Type::TaggedSymbol)
        ALL = T.let(:all, Onlyfansapi::FanListExpiredParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::FanListExpiredParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
