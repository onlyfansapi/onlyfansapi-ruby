# typed: strong

module Onlyfans
  module Models
    class PromotionCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::PromotionCreateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The discount percentage for the promotion's first month. Set to 100 to make this
      # promotion a Free Trial.
      sig { returns(Integer) }
      attr_accessor :discount

      # In how many days this offer will expire. Set to 0 to make this promotion
      # infinite.
      sig { returns(Integer) }
      attr_accessor :expiration_days

      # Limit how many people can claim this offer. Set to 0 for no limits.
      sig { returns(Integer) }
      attr_accessor :offer_limit

      # Whether this promotion should apply to new subscribers, expired subscribers, or
      # both. **IMPORTANT: when set to new_and_expired, the OF will create two separate
      # promotions.**
      sig { returns(Onlyfans::PromotionCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Required only when discount is 100. Sets the duration (in days) of the free
      # trial. Accepted 1-30
      sig { returns(T.nilable(Integer)) }
      attr_reader :free_trial_days

      sig { params(free_trial_days: Integer).void }
      attr_writer :free_trial_days

      # Optionally, provide a message for this promotion.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig do
        params(
          account: String,
          discount: Integer,
          expiration_days: Integer,
          offer_limit: Integer,
          type: Onlyfans::PromotionCreateParams::Type::OrSymbol,
          free_trial_days: Integer,
          message: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The discount percentage for the promotion's first month. Set to 100 to make this
        # promotion a Free Trial.
        discount:,
        # In how many days this offer will expire. Set to 0 to make this promotion
        # infinite.
        expiration_days:,
        # Limit how many people can claim this offer. Set to 0 for no limits.
        offer_limit:,
        # Whether this promotion should apply to new subscribers, expired subscribers, or
        # both. **IMPORTANT: when set to new_and_expired, the OF will create two separate
        # promotions.**
        type:,
        # Required only when discount is 100. Sets the duration (in days) of the free
        # trial. Accepted 1-30
        free_trial_days: nil,
        # Optionally, provide a message for this promotion.
        message: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            discount: Integer,
            expiration_days: Integer,
            offer_limit: Integer,
            type: Onlyfans::PromotionCreateParams::Type::OrSymbol,
            free_trial_days: Integer,
            message: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether this promotion should apply to new subscribers, expired subscribers, or
      # both. **IMPORTANT: when set to new_and_expired, the OF will create two separate
      # promotions.**
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::PromotionCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEW = T.let(:new, Onlyfans::PromotionCreateParams::Type::TaggedSymbol)
        EXPIRED =
          T.let(:expired, Onlyfans::PromotionCreateParams::Type::TaggedSymbol)
        NEW_AND_EXPIRED =
          T.let(
            :new_and_expired,
            Onlyfans::PromotionCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::PromotionCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
