# typed: strong

module Onlyfans
  module Models
    class PostStatsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::PostStatsParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :post_id

      # Set to `true` to include historical data for a post.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :with_historical_data

      sig { params(with_historical_data: T::Boolean).void }
      attr_writer :with_historical_data

      sig do
        params(
          account: String,
          post_id: Integer,
          with_historical_data: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        post_id:,
        # Set to `true` to include historical data for a post.
        with_historical_data: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            post_id: Integer,
            with_historical_data: T::Boolean,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
