# typed: strong

module Onlyfansapi
  module Models
    class SharedTrialLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SharedTrialLinkListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of shared trial links to return. Default `10`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Wait for the database sync to finish, instead of running it in the background.
      # **Will result in longer response times, use with caution**. Default `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :synchronous

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          synchronous: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of shared trial links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        # Wait for the database sync to finish, instead of running it in the background.
        # **Will result in longer response times, use with caution**. Default `false`
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
            synchronous: T.nilable(T::Boolean),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
