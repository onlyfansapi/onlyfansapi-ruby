# typed: strong

module Onlyfans
  module Models
    module Users
      class SubscribeDeleteParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Users::SubscribeDeleteParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :user_id

        # Reason for unsubscribing. Valid options: `1,2,3,4,5`. Leave empty for
        # `No specific reason`.
        sig { returns(String) }
        attr_accessor :reason

        sig do
          params(
            account: String,
            user_id: String,
            reason: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          user_id:,
          # Reason for unsubscribing. Valid options: `1,2,3,4,5`. Leave empty for
          # `No specific reason`.
          reason:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              user_id: String,
              reason: String,
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
