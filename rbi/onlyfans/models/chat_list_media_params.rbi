# typed: strong

module Onlyfans
  module Models
    class ChatListMediaParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::ChatListMediaParams, Onlyfans::Internal::AnyHash)
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

      # Whether to skip user details in the response (`all` or `none`). Defaults to
      # `all`.
      sig { returns(T.nilable(String)) }
      attr_reader :skip_users

      sig { params(skip_users: String).void }
      attr_writer :skip_users

      # Filter by specific media types. Keep empty to return all.
      sig { returns(T.nilable(Onlyfans::ChatListMediaParams::Type::OrSymbol)) }
      attr_accessor :type

      sig do
        params(
          account: String,
          chat_id: String,
          limit: String,
          offset: String,
          skip_users: String,
          type: T.nilable(Onlyfans::ChatListMediaParams::Type::OrSymbol),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        chat_id:,
        # Number of medias to return. Default = 20
        limit: nil,
        # Number of medias to skip for pagination
        offset: nil,
        # Whether to skip user details in the response (`all` or `none`). Defaults to
        # `all`.
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
            type: T.nilable(Onlyfans::ChatListMediaParams::Type::OrSymbol),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by specific media types. Keep empty to return all.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::ChatListMediaParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHOTOS =
          T.let(:photos, Onlyfans::ChatListMediaParams::Type::TaggedSymbol)
        VIDEOS =
          T.let(:videos, Onlyfans::ChatListMediaParams::Type::TaggedSymbol)
        AUDIOS =
          T.let(:audios, Onlyfans::ChatListMediaParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::ChatListMediaParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
