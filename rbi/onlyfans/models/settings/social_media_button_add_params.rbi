# typed: strong

module Onlyfans
  module Models
    module Settings
      class SocialMediaButtonAddParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Settings::SocialMediaButtonAddParams,
              Onlyfans::Internal::AnyHash
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
            Onlyfans::Settings::SocialMediaButtonAddParams::Type::OrSymbol
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
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::OrSymbol,
            value: String,
            request_options: Onlyfans::RequestOptions::OrHash
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
                Onlyfans::Settings::SocialMediaButtonAddParams::Type::OrSymbol,
              value: String,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The button type
        module Type
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Settings::SocialMediaButtonAddParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INSTAGRAM =
            T.let(
              :instagram,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          X =
            T.let(
              :x,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          FACEBOOK =
            T.let(
              :facebook,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          YOUTUBE =
            T.let(
              :youtube,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          TIKTOK =
            T.let(
              :tiktok,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          SNAPCHAT =
            T.let(
              :snapchat,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          AMAZON =
            T.let(
              :amazon,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          TWITCH =
            T.let(
              :twitch,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          DISCORD =
            T.let(
              :discord,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          PATREON =
            T.let(
              :patreon,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          PINTEREST =
            T.let(
              :pinterest,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          ETSY =
            T.let(
              :etsy,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          BEREAL =
            T.let(
              :bereal,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          KICK =
            T.let(
              :kick,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          DEPOP =
            T.let(
              :depop,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          POSHMARK =
            T.let(
              :poshmark,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          VSCO =
            T.let(
              :vsco,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          THREADS =
            T.let(
              :threads,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          THRONE =
            T.let(
              :throne,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          SHOPLTK =
            T.let(
              :shopltk,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          OFTV =
            T.let(
              :oftv,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )
          BLUESKY =
            T.let(
              :bluesky,
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Settings::SocialMediaButtonAddParams::Type::TaggedSymbol
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
