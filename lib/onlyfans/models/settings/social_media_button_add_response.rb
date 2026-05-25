# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::SocialMediaButtons#add
      class SocialMediaButtonAddResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta }

        # @!attribute data
        #
        #   @return [Array<Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Data>, nil]
        optional :data,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Data] }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta]
        #   @param data [Array<Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Data>]

        # @see Onlyfans::Models::Settings::SocialMediaButtonAddResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta#_cache
          class Cache < Onlyfans::Internal::Type::BaseModel
            # @!attribute is_cached
            #
            #   @return [Boolean, nil]
            optional :is_cached, Onlyfans::Internal::Type::Boolean

            # @!attribute note
            #
            #   @return [String, nil]
            optional :note, String

            # @!method initialize(is_cached: nil, note: nil)
            #   @param is_cached [Boolean]
            #   @param note [String]
          end

          # @see Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta#_credits
          class Credits < Onlyfans::Internal::Type::BaseModel
            # @!attribute balance
            #
            #   @return [Integer, nil]
            optional :balance, Integer

            # @!attribute note
            #
            #   @return [String, nil]
            optional :note, String

            # @!attribute used
            #
            #   @return [Integer, nil]
            optional :used, Integer

            # @!method initialize(balance: nil, note: nil, used: nil)
            #   @param balance [Integer]
            #   @param note [String]
            #   @param used [Integer]
          end

          # @see Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta#_rate_limits
          class RateLimits < Onlyfans::Internal::Type::BaseModel
            # @!attribute limit_day
            #
            #   @return [Integer, nil]
            optional :limit_day, Integer

            # @!attribute limit_minute
            #
            #   @return [Integer, nil]
            optional :limit_minute, Integer

            # @!attribute remaining_day
            #
            #   @return [Integer, nil]
            optional :remaining_day, Integer

            # @!attribute remaining_minute
            #
            #   @return [Integer, nil]
            optional :remaining_minute, Integer

            # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
            #   @param limit_day [Integer]
            #   @param limit_minute [Integer]
            #   @param remaining_day [Integer]
            #   @param remaining_minute [Integer]
          end
        end

        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute clicks
          #
          #   @return [Integer, nil]
          optional :clicks, Integer

          # @!attribute is_valid
          #
          #   @return [Boolean, nil]
          optional :is_valid, Onlyfans::Internal::Type::Boolean, api_name: :isValid

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute link
          #
          #   @return [String, nil]
          optional :link, String

          # @!attribute social_media
          #
          #   @return [String, nil]
          optional :social_media, String, api_name: :socialMedia

          # @!attribute sort
          #
          #   @return [Integer, nil]
          optional :sort, Integer

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!attribute username
          #
          #   @return [String, nil]
          optional :username, String

          # @!method initialize(id: nil, clicks: nil, is_valid: nil, label: nil, link: nil, social_media: nil, sort: nil, url: nil, username: nil)
          #   @param id [Integer]
          #   @param clicks [Integer]
          #   @param is_valid [Boolean]
          #   @param label [String]
          #   @param link [String]
          #   @param social_media [String]
          #   @param sort [Integer]
          #   @param url [String]
          #   @param username [String]
        end
      end
    end
  end
end
