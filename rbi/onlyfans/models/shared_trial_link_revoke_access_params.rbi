# typed: strong

module Onlyfans
  module Models
    class SharedTrialLinkRevokeAccessParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SharedTrialLinkRevokeAccessParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :shared_trial_link_id

      sig do
        params(
          account: String,
          shared_trial_link_id: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account:, shared_trial_link_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            account: String,
            shared_trial_link_id: Integer,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
