# typed: strong

module Onlyfansapi
  module Models
    module Settings
      class SocialMediaButtonAddParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Settings::SocialMediaButtonAddParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The button label
        sig { returns(String) }
        attr_accessor :label

        # The button type
        sig do
          returns(
            Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::OrSymbol
          )
        end
        attr_accessor :type

        # The button value, either a username or link.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(
            account: String,
            label: String,
            type:
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::OrSymbol,
            value: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The button label
          label:,
          # The button type
          type:,
          # The button value, either a username or link.
          value:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              label: String,
              type:
                Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::OrSymbol,
              value: String,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The button type
        module Type
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Settings::SocialMediaButtonAddParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INSTAGRAM =
            T.let(
              :instagram,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          X =
            T.let(
              :x,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          FACEBOOK =
            T.let(
              :facebook,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          YOUTUBE =
            T.let(
              :youtube,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          TIKTOK =
            T.let(
              :tiktok,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          SNAPCHAT =
            T.let(
              :snapchat,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          AMAZON =
            T.let(
              :amazon,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          TWITCH =
            T.let(
              :twitch,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          DISCORD =
            T.let(
              :discord,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          PATREON =
            T.let(
              :patreon,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          PINTEREST =
            T.let(
              :pinterest,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          ETSY =
            T.let(
              :etsy,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          BEREAL =
            T.let(
              :bereal,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          KICK =
            T.let(
              :kick,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          DEPOP =
            T.let(
              :depop,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          POSHMARK =
            T.let(
              :poshmark,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          VSCO =
            T.let(
              :vsco,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          THREADS =
            T.let(
              :threads,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          THRONE =
            T.let(
              :throne,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          SHOPLTK =
            T.let(
              :shopltk,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          OFTV =
            T.let(
              :oftv,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          BLUESKY =
            T.let(
              :bluesky,
              Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
