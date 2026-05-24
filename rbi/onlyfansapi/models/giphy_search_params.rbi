# typed: strong

module Onlyfansapi
  module Models
    class GiphySearchParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::GiphySearchParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The search query.
      sig { returns(String) }
      attr_accessor :q

      # Number of GIFs to return (default = 10, max = 50)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of GIFs to skip for pagination (default = 0)
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          q: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The search query.
        q:,
        # Number of GIFs to return (default = 10, max = 50)
        limit: nil,
        # Number of GIFs to skip for pagination (default = 0)
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            q: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
