# typed: strong

module Onlyfans
  module Models
    class FanSetCustomNameParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::FanSetCustomNameParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :fan_id

      # New Custom Name for a Fan. Send empty string (`""`) or `null` to clear out the
      # custom name.
      sig { returns(String) }
      attr_accessor :custom_name

      sig do
        params(
          account: String,
          fan_id: String,
          custom_name: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        fan_id:,
        # New Custom Name for a Fan. Send empty string (`""`) or `null` to clear out the
        # custom name.
        custom_name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            fan_id: String,
            custom_name: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
