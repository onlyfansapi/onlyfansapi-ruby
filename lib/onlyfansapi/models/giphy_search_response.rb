# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Giphy#search
    class GiphySearchResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::GiphySearchResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::GiphySearchResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfansapi::Models::GiphySearchResponse::Data>, nil]
      optional :data,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::GiphySearchResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::GiphySearchResponse::Meta]
      #   @param data [Array<Onlyfansapi::Models::GiphySearchResponse::Data>]

      # @see Onlyfansapi::Models::GiphySearchResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::GiphySearchResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::GiphySearchResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::GiphySearchResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::GiphySearchResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::GiphySearchResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::GiphySearchResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::GiphySearchResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::GiphySearchResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::GiphySearchResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::GiphySearchResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::GiphySearchResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::GiphySearchResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute embed_url
        #
        #   @return [String, nil]
        optional :embed_url, String

        # @!attribute images
        #
        #   @return [Onlyfansapi::Models::GiphySearchResponse::Data::Images, nil]
        optional :images, -> { Onlyfansapi::Models::GiphySearchResponse::Data::Images }

        # @!attribute rating
        #
        #   @return [String, nil]
        optional :rating, String

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(id: nil, embed_url: nil, images: nil, rating: nil, slug: nil, title: nil, type: nil, url: nil, username: nil)
        #   @param id [String]
        #   @param embed_url [String]
        #   @param images [Onlyfansapi::Models::GiphySearchResponse::Data::Images]
        #   @param rating [String]
        #   @param slug [String]
        #   @param title [String]
        #   @param type [String]
        #   @param url [String]
        #   @param username [String]

        # @see Onlyfansapi::Models::GiphySearchResponse::Data#images
        class Images < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute fixed_height
          #
          #   @return [Onlyfansapi::Models::GiphySearchResponse::Data::Images::FixedHeight, nil]
          optional :fixed_height, -> { Onlyfansapi::Models::GiphySearchResponse::Data::Images::FixedHeight }

          # @!attribute original
          #
          #   @return [Onlyfansapi::Models::GiphySearchResponse::Data::Images::Original, nil]
          optional :original, -> { Onlyfansapi::Models::GiphySearchResponse::Data::Images::Original }

          # @!method initialize(fixed_height: nil, original: nil)
          #   @param fixed_height [Onlyfansapi::Models::GiphySearchResponse::Data::Images::FixedHeight]
          #   @param original [Onlyfansapi::Models::GiphySearchResponse::Data::Images::Original]

          # @see Onlyfansapi::Models::GiphySearchResponse::Data::Images#fixed_height
          class FixedHeight < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute height
            #
            #   @return [String, nil]
            optional :height, String

            # @!attribute url
            #
            #   @return [String, nil]
            optional :url, String

            # @!attribute width
            #
            #   @return [String, nil]
            optional :width, String

            # @!method initialize(height: nil, url: nil, width: nil)
            #   @param height [String]
            #   @param url [String]
            #   @param width [String]
          end

          # @see Onlyfansapi::Models::GiphySearchResponse::Data::Images#original
          class Original < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute height
            #
            #   @return [String, nil]
            optional :height, String

            # @!attribute mp4
            #
            #   @return [String, nil]
            optional :mp4, String

            # @!attribute url
            #
            #   @return [String, nil]
            optional :url, String

            # @!attribute webp
            #
            #   @return [String, nil]
            optional :webp, String

            # @!attribute width
            #
            #   @return [String, nil]
            optional :width, String

            # @!method initialize(height: nil, mp4: nil, url: nil, webp: nil, width: nil)
            #   @param height [String]
            #   @param mp4 [String]
            #   @param url [String]
            #   @param webp [String]
            #   @param width [String]
          end
        end
      end
    end
  end
end
