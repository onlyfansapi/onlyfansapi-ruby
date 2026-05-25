# typed: strong

module Onlyfans
  module Models
    module UserLists
      class UserRemoveParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::UserLists::UserRemoveParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :user_list_id

        sig { returns(Integer) }
        attr_accessor :user_id

        sig do
          params(
            account: String,
            user_list_id: String,
            user_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, user_list_id:, user_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              account: String,
              user_list_id: String,
              user_id: Integer,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
