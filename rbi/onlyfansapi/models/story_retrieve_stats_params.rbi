# typed: strong

module Onlyfansapi
  module Models
    class StoryRetrieveStatsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StoryRetrieveStatsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :story_id

      sig do
        params(
          account: String,
          story_id: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account:, story_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            account: String,
            story_id: Integer,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
