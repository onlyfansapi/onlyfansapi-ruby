# typed: strong

module Onlyfans
  module Models
    class StoryCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::StoryCreateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Array of media file upload prefixed_ids, or OF media IDs (required if price is
      # not 0).
      sig { returns(T::Array[String]) }
      attr_accessor :media_files

      sig do
        params(
          account: String,
          media_files: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Array of media file upload prefixed_ids, or OF media IDs (required if price is
        # not 0).
        media_files:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            media_files: T::Array[String],
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
