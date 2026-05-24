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

      # Number of fans to return (1-50)
      sig { returns(T.nilable(String)) }
      attr_accessor :limit

      # Number of fans to skip
      sig { returns(T.nilable(String)) }
      attr_accessor :offset

      # Filter by fan type
      sig { returns(T.nilable(String)) }
      attr_accessor :type

      sig do
        params(
          account: String,
          filter: Onlyfansapi::FanListExpiredParams::Filter::OrHash,
          limit: T.nilable(String),
          offset: T.nilable(String),
          type: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # Number of fans to return (1-50)
        limit: nil,
        # Number of fans to skip
        offset: nil,
        # Filter by fan type
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfansapi::FanListExpiredParams::Filter,
            limit: T.nilable(String),
            offset: T.nilable(String),
            type: T.nilable(String),
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

        # Filter by minimum subscription duration (days)
        sig { returns(T.nilable(String)) }
        attr_accessor :duration

        # Filter by online status (1 for online)
        sig { returns(T.nilable(String)) }
        attr_accessor :online

        # Filter by minimum tips
        sig { returns(T.nilable(String)) }
        attr_accessor :tips

        # Filter by minimum total spent
        sig { returns(T.nilable(String)) }
        attr_accessor :total_spent

        sig do
          params(
            duration: T.nilable(String),
            online: T.nilable(String),
            tips: T.nilable(String),
            total_spent: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by minimum subscription duration (days)
          duration: nil,
          # Filter by online status (1 for online)
          online: nil,
          # Filter by minimum tips
          tips: nil,
          # Filter by minimum total spent
          total_spent: nil
        )
        end

        sig do
          override.returns(
            {
              duration: T.nilable(String),
              online: T.nilable(String),
              tips: T.nilable(String),
              total_spent: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
