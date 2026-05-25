# typed: strong

module Onlyfans
  module Models
    class TrialLinkListSpendersParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::TrialLinkListSpendersParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :trial_link_id

      # The number of spenders to return per page. Default `50`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Minimal spend of a fan. Default `1`. Must be at least 1.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_spend

      sig { params(min_spend: Float).void }
      attr_writer :min_spend

      # The offset used for pagination. Default `0`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          trial_link_id: String,
          limit: Integer,
          min_spend: Float,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        trial_link_id:,
        # The number of spenders to return per page. Default `50`.
        limit: nil,
        # Minimal spend of a fan. Default `1`. Must be at least 1.
        min_spend: nil,
        # The offset used for pagination. Default `0`.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            trial_link_id: String,
            limit: Integer,
            min_spend: Float,
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
