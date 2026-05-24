# typed: strong

module Onlyfansapi
  module Models
    class StoryListArchiveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StoryListArchiveParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Number of stories to return (default = 18)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The marker used for pagination. Default: `null`
      sig { returns(T.nilable(String)) }
      attr_reader :marker

      sig { params(marker: String).void }
      attr_writer :marker

      sig do
        params(
          account: String,
          limit: Integer,
          marker: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Number of stories to return (default = 18)
        limit: nil,
        # The marker used for pagination. Default: `null`
        marker: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            marker: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
