# typed: strong

module Onlyfansapi
  module Models
    class TrialLinkCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::TrialLinkCreateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      # **30** (1 month), **90** (3 months), **180** (6 months), or **360** (12 months).
      sig { returns(Onlyfansapi::TrialLinkCreateParams::Duration::OrInteger) }
      attr_accessor :duration

      # The trial link expiration **in days (from now)**. Must either be **0** (to never
      # expire), or a number between **1** and **30**.
      sig { returns(Integer) }
      attr_accessor :offer_expiration

      # How many people can use this offer. Must either be **0** (for no limit), or a
      # number between **1**-**10**, **50**, or **100**.
      sig { returns(Onlyfansapi::TrialLinkCreateParams::OfferLimit::OrInteger) }
      attr_accessor :offer_limit

      # The name of the trail link (optional). Cannot be longer than 64 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          account: String,
          duration: Onlyfansapi::TrialLinkCreateParams::Duration::OrInteger,
          offer_expiration: Integer,
          offer_limit:
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::OrInteger,
          name: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
        # **30** (1 month), **90** (3 months), **180** (6 months), or **360** (12 months).
        duration:,
        # The trial link expiration **in days (from now)**. Must either be **0** (to never
        # expire), or a number between **1** and **30**.
        offer_expiration:,
        # How many people can use this offer. Must either be **0** (for no limit), or a
        # number between **1**-**10**, **50**, or **100**.
        offer_limit:,
        # The name of the trail link (optional). Cannot be longer than 64 characters.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            duration: Onlyfansapi::TrialLinkCreateParams::Duration::OrInteger,
            offer_expiration: Integer,
            offer_limit:
              Onlyfansapi::TrialLinkCreateParams::OfferLimit::OrInteger,
            name: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      # **30** (1 month), **90** (3 months), **180** (6 months), or **360** (12 months).
      module Duration
        extend Onlyfansapi::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfansapi::TrialLinkCreateParams::Duration)
          end
        OrInteger = T.type_alias { Integer }

        DURATION_1 =
          T.let(1, Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger)
        DURATION_3 =
          T.let(3, Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger)
        DURATION_7 =
          T.let(7, Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger)
        DURATION_14 =
          T.let(14, Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger)
        DURATION_30 =
          T.let(30, Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger)
        DURATION_90 =
          T.let(90, Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger)
        DURATION_180 =
          T.let(
            180,
            Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger
          )
        DURATION_360 =
          T.let(
            360,
            Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::TrialLinkCreateParams::Duration::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # How many people can use this offer. Must either be **0** (for no limit), or a
      # number between **1**-**10**, **50**, or **100**.
      module OfferLimit
        extend Onlyfansapi::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfansapi::TrialLinkCreateParams::OfferLimit)
          end
        OrInteger = T.type_alias { Integer }

        OFFER_LIMIT_0 =
          T.let(
            0,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_1 =
          T.let(
            1,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_2 =
          T.let(
            2,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_3 =
          T.let(
            3,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_4 =
          T.let(
            4,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_5 =
          T.let(
            5,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_6 =
          T.let(
            6,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_7 =
          T.let(
            7,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_8 =
          T.let(
            8,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_9 =
          T.let(
            9,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_10 =
          T.let(
            10,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_50 =
          T.let(
            50,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )
        OFFER_LIMIT_100 =
          T.let(
            100,
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::TrialLinkCreateParams::OfferLimit::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
