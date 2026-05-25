# typed: strong

module Onlyfans
  module Models
    class ProfileRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::ProfileRetrieveParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :username

      # If `true` then OnlyFansAPI will always return the real time information about
      # profile (eg. when was the profile last online).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :fresh

      sig do
        params(
          username: String,
          fresh: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        username:,
        # If `true` then OnlyFansAPI will always return the real time information about
        # profile (eg. when was the profile last online).
        fresh: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            username: String,
            fresh: T.nilable(T::Boolean),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
