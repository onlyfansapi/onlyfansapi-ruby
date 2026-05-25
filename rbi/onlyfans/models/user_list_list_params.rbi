# typed: strong

module Onlyfans
  module Models
    class UserListListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::UserListListParams, Onlyfans::Internal::AnyHash)
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
          request_options: Onlyfans::RequestOptions::OrHash
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
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
