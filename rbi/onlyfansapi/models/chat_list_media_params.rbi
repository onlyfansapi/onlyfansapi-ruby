# typed: strong

module Onlyfansapi
  module Models
    class ChatListMediaParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::ChatListMediaParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :chat_id

      # Number of medias to return. Default = 20
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # Number of medias to skip for pagination
      sig { returns(T.nilable(String)) }
      attr_reader :offset

      sig { params(offset: String).void }
      attr_writer :offset

      # Whether to skip user details in response (all or none). Default = all
      sig { returns(T.nilable(String)) }
      attr_reader :skip_users

      sig { params(skip_users: String).void }
      attr_writer :skip_users

      # Filter by specific media types. Keep empty to return all.
      sig do
        returns(T.nilable(Onlyfansapi::ChatListMediaParams::Type::OrSymbol))
      end
      attr_accessor :type

      sig do
        params(
          account: String,
          chat_id: String,
          limit: String,
          offset: String,
          skip_users: String,
          type: T.nilable(Onlyfansapi::ChatListMediaParams::Type::OrSymbol),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        chat_id:,
        # Number of medias to return. Default = 20
        limit: nil,
        # Number of medias to skip for pagination
        offset: nil,
        # Whether to skip user details in response (all or none). Default = all
        skip_users: nil,
        # Filter by specific media types. Keep empty to return all.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            chat_id: String,
            limit: String,
            offset: String,
            skip_users: String,
            type: T.nilable(Onlyfansapi::ChatListMediaParams::Type::OrSymbol),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by specific media types. Keep empty to return all.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::ChatListMediaParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHOTOS =
          T.let(:photos, Onlyfansapi::ChatListMediaParams::Type::TaggedSymbol)
        VIDEOS =
          T.let(:videos, Onlyfansapi::ChatListMediaParams::Type::TaggedSymbol)
        AUDIOS =
          T.let(:audios, Onlyfansapi::ChatListMediaParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::ChatListMediaParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
