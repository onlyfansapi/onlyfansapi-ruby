# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::SocialMediaButtons#add
      class SocialMediaButtonAddParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute label
        #   The button label
        #
        #   @return [String]
        required :label, String

        # @!attribute type
        #   The button type
        #
        #   @return [Symbol, Onlyfans::Models::Settings::SocialMediaButtonAddParams::Type]
        required :type, enum: -> { Onlyfans::Settings::SocialMediaButtonAddParams::Type }

        # @!attribute value
        #   The button value, either a username or link.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(account:, label:, type:, value:, request_options: {})
        #   @param account [String]
        #
        #   @param label [String] The button label
        #
        #   @param type [Symbol, Onlyfans::Models::Settings::SocialMediaButtonAddParams::Type] The button type
        #
        #   @param value [String] The button value, either a username or link.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        # The button type
        module Type
          extend Onlyfans::Internal::Type::Enum

          INSTAGRAM = :instagram
          X = :x
          FACEBOOK = :facebook
          YOUTUBE = :youtube
          TIKTOK = :tiktok
          SNAPCHAT = :snapchat
          AMAZON = :amazon
          TWITCH = :twitch
          DISCORD = :discord
          PATREON = :patreon
          PINTEREST = :pinterest
          ETSY = :etsy
          BEREAL = :bereal
          KICK = :kick
          DEPOP = :depop
          POSHMARK = :poshmark
          VSCO = :vsco
          THREADS = :threads
          THRONE = :throne
          SHOPLTK = :shopltk
          OFTV = :oftv
          BLUESKY = :bluesky

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
