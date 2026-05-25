# typed: strong

module Onlyfans
  module Models
    class TrialLinkListSubscribersParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::TrialLinkListSubscribersParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :trial_link_id

      # The number of subscribers to return per page. Default `10`
      sig { returns(Integer) }
      attr_accessor :limit

      # The offset used for pagination. Default `0`
      sig { returns(Integer) }
      attr_accessor :offset

      sig do
        params(
          account: String,
          trial_link_id: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        trial_link_id:,
        # The number of subscribers to return per page. Default `10`
        limit:,
        # The offset used for pagination. Default `0`
        offset:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            trial_link_id: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
