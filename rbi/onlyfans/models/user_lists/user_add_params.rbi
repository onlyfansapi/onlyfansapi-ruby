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

        # Set to `true` to skip the User IDs OnlyFans refuses instead of failing the whole
        # batch. We drop the rejected IDs and retry the remainder for you (up to 5
        # OnlyFans attempts, each costing 1 credit), then respond `200` with `data.added`
        # (the IDs that made it in) and `data.failed` (an object mapping each rejected
        # User ID to the reason OnlyFans gave). Note this changes the shape of `data` —
        # see the example responses. Failures that are not about individual users (e.g. an
        # invalid or inaccessible list ID) still return the regular `400`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :skip_invalid

        sig { params(skip_invalid: T::Boolean).void }
        attr_writer :skip_invalid

        sig do
          params(
            account: String,
            user_list_id: String,
            ids: T::Array[String],
            skip_invalid: T::Boolean,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          user_list_id:,
          # Array of OnlyFans User IDs to be added into the list
          ids:,
          # Set to `true` to skip the User IDs OnlyFans refuses instead of failing the whole
          # batch. We drop the rejected IDs and retry the remainder for you (up to 5
          # OnlyFans attempts, each costing 1 credit), then respond `200` with `data.added`
          # (the IDs that made it in) and `data.failed` (an object mapping each rejected
          # User ID to the reason OnlyFans gave). Note this changes the shape of `data` —
          # see the example responses. Failures that are not about individual users (e.g. an
          # invalid or inaccessible list ID) still return the regular `400`.
          skip_invalid: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              user_list_id: String,
              ids: T::Array[String],
              skip_invalid: T::Boolean,
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
