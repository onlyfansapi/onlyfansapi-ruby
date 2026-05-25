# typed: strong

module Onlyfans
  module Models
    class PostUnarchiveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::PostUnarchiveParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :post_id

      # Set to `true` if this post is currently in the Private Archive.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :private_archive

      sig { params(private_archive: T::Boolean).void }
      attr_writer :private_archive

      sig do
        params(
          account: String,
          post_id: Integer,
          private_archive: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        post_id:,
        # Set to `true` if this post is currently in the Private Archive.
        private_archive: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            post_id: Integer,
            private_archive: T::Boolean,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
