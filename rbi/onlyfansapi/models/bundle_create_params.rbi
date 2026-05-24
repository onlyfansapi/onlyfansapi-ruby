# typed: strong

module Onlyfansapi
  module Models
    class BundleCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::BundleCreateParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The bundle's discount percentage.
      sig { returns(Onlyfansapi::BundleCreateParams::Discount::OrInteger) }
      attr_accessor :discount

      # The bundle's duration in months.
      sig { returns(Onlyfansapi::BundleCreateParams::Duration::OrInteger) }
      attr_accessor :duration

      sig do
        params(
          account: String,
          discount: Onlyfansapi::BundleCreateParams::Discount::OrInteger,
          duration: Onlyfansapi::BundleCreateParams::Duration::OrInteger,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The bundle's discount percentage.
        discount:,
        # The bundle's duration in months.
        duration:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            discount: Onlyfansapi::BundleCreateParams::Discount::OrInteger,
            duration: Onlyfansapi::BundleCreateParams::Duration::OrInteger,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The bundle's discount percentage.
      module Discount
        extend Onlyfansapi::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfansapi::BundleCreateParams::Discount)
          end
        OrInteger = T.type_alias { Integer }

        DISCOUNT_0 =
          T.let(0, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_5 =
          T.let(5, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_10 =
          T.let(10, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_15 =
          T.let(15, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_20 =
          T.let(20, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_25 =
          T.let(25, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_30 =
          T.let(30, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_35 =
          T.let(35, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_40 =
          T.let(40, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_45 =
          T.let(45, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_50 =
          T.let(50, Onlyfansapi::BundleCreateParams::Discount::TaggedInteger)

        sig do
          override.returns(
            T::Array[Onlyfansapi::BundleCreateParams::Discount::TaggedInteger]
          )
        end
        def self.values
        end
      end

      # The bundle's duration in months.
      module Duration
        extend Onlyfansapi::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfansapi::BundleCreateParams::Duration)
          end
        OrInteger = T.type_alias { Integer }

        DURATION_3 =
          T.let(3, Onlyfansapi::BundleCreateParams::Duration::TaggedInteger)
        DURATION_6 =
          T.let(6, Onlyfansapi::BundleCreateParams::Duration::TaggedInteger)
        DURATION_12 =
          T.let(12, Onlyfansapi::BundleCreateParams::Duration::TaggedInteger)

        sig do
          override.returns(
            T::Array[Onlyfansapi::BundleCreateParams::Duration::TaggedInteger]
          )
        end
        def self.values
        end
      end
    end
  end
end
