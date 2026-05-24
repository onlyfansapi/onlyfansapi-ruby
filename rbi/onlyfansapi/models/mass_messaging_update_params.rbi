# typed: strong

module Onlyfansapi
  module Models
    class MassMessagingUpdateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::MassMessagingUpdateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :id

      # The message text content
      sig { returns(String) }
      attr_accessor :text

      # Whether the text should be shown or hidden
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :locked_text

      sig { params(locked_text: T::Boolean).void }
      attr_writer :locked_text

      # Array of media file upload prefixed_ids, or OF media IDs (required if price is
      # not 0). Will be hidden if `price` is provided.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :media_files

      sig { params(media_files: T::Array[String]).void }
      attr_writer :media_files

      # Array of media file upload prefixed_ids, or OF media IDs (required if price is
      # not 0). Will be shown if `price` is provided. All `previews` values must also
      # exist in the `mediaFiles` array.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :previews

      sig { params(previews: T::Array[String]).void }
      attr_writer :previews

      # Price for paid content (0 or between 3-200). In case this is not zero,
      # **mediaFiles** is required
      sig { returns(T.nilable(Integer)) }
      attr_reader :price

      sig { params(price: Integer).void }
      attr_writer :price

      # Schedule the chat message in the future (UTC timezone).
      sig { returns(T.nilable(String)) }
      attr_reader :scheduled_date

      sig { params(scheduled_date: String).void }
      attr_writer :scheduled_date

      # Array of user IDs that the mass message will be sent to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      # Array of user list IDs that the mass message will be sent to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_lists

      sig { params(user_lists: T::Array[String]).void }
      attr_writer :user_lists

      sig do
        params(
          account: String,
          id: String,
          text: String,
          locked_text: T::Boolean,
          media_files: T::Array[String],
          previews: T::Array[String],
          price: Integer,
          scheduled_date: String,
          user_ids: T::Array[String],
          user_lists: T::Array[String],
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        id:,
        # The message text content
        text:,
        # Whether the text should be shown or hidden
        locked_text: nil,
        # Array of media file upload prefixed_ids, or OF media IDs (required if price is
        # not 0). Will be hidden if `price` is provided.
        media_files: nil,
        # Array of media file upload prefixed_ids, or OF media IDs (required if price is
        # not 0). Will be shown if `price` is provided. All `previews` values must also
        # exist in the `mediaFiles` array.
        previews: nil,
        # Price for paid content (0 or between 3-200). In case this is not zero,
        # **mediaFiles** is required
        price: nil,
        # Schedule the chat message in the future (UTC timezone).
        scheduled_date: nil,
        # Array of user IDs that the mass message will be sent to.
        user_ids: nil,
        # Array of user list IDs that the mass message will be sent to.
        user_lists: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            id: String,
            text: String,
            locked_text: T::Boolean,
            media_files: T::Array[String],
            previews: T::Array[String],
            price: Integer,
            scheduled_date: String,
            user_ids: T::Array[String],
            user_lists: T::Array[String],
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
