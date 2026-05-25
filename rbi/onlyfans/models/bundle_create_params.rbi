# typed: strong

module Onlyfans
  module Models
    class BundleCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::BundleCreateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The bundle's discount percentage.
      sig { returns(Onlyfans::BundleCreateParams::Discount::OrInteger) }
      attr_accessor :discount

      # The bundle's duration in months.
      sig { returns(Onlyfans::BundleCreateParams::Duration::OrInteger) }
      attr_accessor :duration

      sig do
        params(
          account: String,
          discount: Onlyfans::BundleCreateParams::Discount::OrInteger,
          duration: Onlyfans::BundleCreateParams::Duration::OrInteger,
          request_options: Onlyfans::RequestOptions::OrHash
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
            discount: Onlyfans::BundleCreateParams::Discount::OrInteger,
            duration: Onlyfans::BundleCreateParams::Duration::OrInteger,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The bundle's discount percentage.
      module Discount
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::BundleCreateParams::Discount)
          end
        OrInteger = T.type_alias { Integer }

        DISCOUNT_0 =
          T.let(0, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_5 =
          T.let(5, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_10 =
          T.let(10, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_15 =
          T.let(15, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_20 =
          T.let(20, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_25 =
          T.let(25, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_30 =
          T.let(30, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_35 =
          T.let(35, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_40 =
          T.let(40, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_45 =
          T.let(45, Onlyfans::BundleCreateParams::Discount::TaggedInteger)
        DISCOUNT_50 =
          T.let(50, Onlyfans::BundleCreateParams::Discount::TaggedInteger)

        sig do
          override.returns(
            T::Array[Onlyfans::BundleCreateParams::Discount::TaggedInteger]
          )
        end
        def self.values
        end
      end

      # The bundle's duration in months.
      module Duration
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::BundleCreateParams::Duration)
          end
        OrInteger = T.type_alias { Integer }

        DURATION_3 =
          T.let(3, Onlyfans::BundleCreateParams::Duration::TaggedInteger)
        DURATION_6 =
          T.let(6, Onlyfans::BundleCreateParams::Duration::TaggedInteger)
        DURATION_12 =
          T.let(12, Onlyfans::BundleCreateParams::Duration::TaggedInteger)

        sig do
          override.returns(
            T::Array[Onlyfans::BundleCreateParams::Duration::TaggedInteger]
          )
        end
        def self.values
        end
      end
    end
  end
end
