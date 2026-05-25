# typed: strong

module Onlyfans
  module Models
    class SettingCheckUsernameAvailabilityParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SettingCheckUsernameAvailabilityParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The username to check.
      sig { returns(String) }
      attr_accessor :username

      sig do
        params(
          account: String,
          username: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The username to check.
        username:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            username: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
