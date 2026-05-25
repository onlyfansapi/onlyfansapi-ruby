# typed: strong

module Onlyfans
  module Models
    class MessageAttachTagsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::MessageAttachTagsParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :message_id

      # Array of OnlyFans Release Form Guest IDs to tag in your message
      sig { returns(T.nilable(String)) }
      attr_reader :rf_guest

      sig { params(rf_guest: String).void }
      attr_writer :rf_guest

      # Array of OnlyFans Release Form Partners IDs to tag in your message
      sig { returns(T.nilable(String)) }
      attr_reader :rf_partner

      sig { params(rf_partner: String).void }
      attr_writer :rf_partner

      # Array of OnlyFans Creator User IDs to tag in your message
      sig { returns(T.nilable(String)) }
      attr_reader :rf_tag

      sig { params(rf_tag: String).void }
      attr_writer :rf_tag

      sig do
        params(
          account: String,
          message_id: String,
          rf_guest: String,
          rf_partner: String,
          rf_tag: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        message_id:,
        # Array of OnlyFans Release Form Guest IDs to tag in your message
        rf_guest: nil,
        # Array of OnlyFans Release Form Partners IDs to tag in your message
        rf_partner: nil,
        # Array of OnlyFans Creator User IDs to tag in your message
        rf_tag: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            message_id: String,
            rf_guest: String,
            rf_partner: String,
            rf_tag: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
