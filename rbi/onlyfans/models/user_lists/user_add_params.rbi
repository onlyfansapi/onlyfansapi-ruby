# typed: strong

module Onlyfans
  module Models
    module UserLists
      class UserAddParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::UserLists::UserAddParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :user_list_id

        # Array of OnlyFans User IDs to be added into the list
        sig { returns(T::Array[String]) }
        attr_accessor :ids

        sig do
          params(
            account: String,
            user_list_id: String,
            ids: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          user_list_id:,
          # Array of OnlyFans User IDs to be added into the list
          ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              user_list_id: String,
              ids: T::Array[String],
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
