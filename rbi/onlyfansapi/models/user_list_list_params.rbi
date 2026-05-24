# typed: strong

module Onlyfansapi
  module Models
    class UserListListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::UserListListParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # How many results to return in the request. Max. 50 user lists. Must be at
      # least 10. Must not be greater than 50.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      # Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :offset

      sig do
        params(
          account: String,
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # How many results to return in the request. Max. 50 user lists. Must be at
        # least 10. Must not be greater than 50.
        limit: nil,
        # Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: T.nilable(Integer),
            offset: T.nilable(Integer),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
