# typed: strong

module Onlyfans
  module Models
    class UserListUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::UserListUpdateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :user_list_id

      # The new name for the User List.
      sig { returns(String) }
      attr_accessor :name

      # Whether to pin the User List to feed to the OnlyFans homepage or not.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_pinned_to_feed

      sig do
        params(
          account: String,
          user_list_id: String,
          name: String,
          is_pinned_to_feed: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        user_list_id:,
        # The new name for the User List.
        name:,
        # Whether to pin the User List to feed to the OnlyFans homepage or not.
        is_pinned_to_feed: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            user_list_id: String,
            name: String,
            is_pinned_to_feed: T.nilable(T::Boolean),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
