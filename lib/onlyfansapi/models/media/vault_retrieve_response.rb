# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Vault#retrieve
      class VaultRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta]
        #   @param data [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data]

        # @see Onlyfansapi::Models::Media::VaultRetrieveResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Media::VaultRetrieveResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_view
          #
          #   @return [Boolean, nil]
          optional :can_view, Onlyfansapi::Internal::Type::Boolean, api_name: :canView

          # @!attribute converted_to_video
          #
          #   @return [Boolean, nil]
          optional :converted_to_video, Onlyfansapi::Internal::Type::Boolean, api_name: :convertedToVideo

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute duration
          #
          #   @return [Integer, nil]
          optional :duration, Integer

          # @!attribute files
          #
          #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files, nil]
          optional :files, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files }

          # @!attribute has_custom_preview
          #
          #   @return [Boolean, nil]
          optional :has_custom_preview, Onlyfansapi::Internal::Type::Boolean, api_name: :hasCustomPreview

          # @!attribute has_error
          #
          #   @return [Boolean, nil]
          optional :has_error, Onlyfansapi::Internal::Type::Boolean, api_name: :hasError

          # @!attribute has_posts
          #
          #   @return [Boolean, nil]
          optional :has_posts, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPosts

          # @!attribute is_ready
          #
          #   @return [Boolean, nil]
          optional :is_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isReady

          # @!attribute list_states
          #
          #   @return [Array<Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::ListState>, nil]
          optional :list_states,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::ListState] },
                   api_name: :listStates

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute video_sources
          #
          #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::VideoSources, nil]
          optional :video_sources,
                   -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::VideoSources },
                   api_name: :videoSources

          # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, has_posts: nil, is_ready: nil, list_states: nil, type: nil, video_sources: nil)
          #   @param id [Integer]
          #   @param can_view [Boolean]
          #   @param converted_to_video [Boolean]
          #   @param created_at [String]
          #   @param duration [Integer]
          #   @param files [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files]
          #   @param has_custom_preview [Boolean]
          #   @param has_error [Boolean]
          #   @param has_posts [Boolean]
          #   @param is_ready [Boolean]
          #   @param list_states [Array<Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::ListState>]
          #   @param type [String]
          #   @param video_sources [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::VideoSources]

          # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Data#files
          class Files < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute full
            #
            #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Full, nil]
            optional :full, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Full }

            # @!attribute preview
            #
            #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Preview, nil]
            optional :preview, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Preview }

            # @!attribute square_preview
            #
            #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::SquarePreview, nil]
            optional :square_preview,
                     -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::SquarePreview },
                     api_name: :squarePreview

            # @!attribute thumb
            #
            #   @return [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Thumb, nil]
            optional :thumb, -> { Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Thumb }

            # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
            #   @param full [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Full]
            #   @param preview [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Preview]
            #   @param square_preview [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::SquarePreview]
            #   @param thumb [Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files::Thumb]

            # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files#full
            class Full < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute height
              #
              #   @return [Integer, nil]
              optional :height, Integer

              # @!attribute size
              #
              #   @return [Integer, nil]
              optional :size, Integer

              # @!attribute sources
              #
              #   @return [Array<Object>, nil]
              optional :sources, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!attribute width
              #
              #   @return [Integer, nil]
              optional :width, Integer

              # @!method initialize(height: nil, size: nil, sources: nil, url: nil, width: nil)
              #   @param height [Integer]
              #   @param size [Integer]
              #   @param sources [Array<Object>]
              #   @param url [String]
              #   @param width [Integer]
            end

            # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files#preview
            class Preview < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute height
              #
              #   @return [Integer, nil]
              optional :height, Integer

              # @!attribute size
              #
              #   @return [Integer, nil]
              optional :size, Integer

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!attribute width
              #
              #   @return [Integer, nil]
              optional :width, Integer

              # @!method initialize(height: nil, size: nil, url: nil, width: nil)
              #   @param height [Integer]
              #   @param size [Integer]
              #   @param url [String]
              #   @param width [Integer]
            end

            # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files#square_preview
            class SquarePreview < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute height
              #
              #   @return [Integer, nil]
              optional :height, Integer

              # @!attribute size
              #
              #   @return [Integer, nil]
              optional :size, Integer

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!attribute width
              #
              #   @return [Integer, nil]
              optional :width, Integer

              # @!method initialize(height: nil, size: nil, url: nil, width: nil)
              #   @param height [Integer]
              #   @param size [Integer]
              #   @param url [String]
              #   @param width [Integer]
            end

            # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Data::Files#thumb
            class Thumb < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute height
              #
              #   @return [Integer, nil]
              optional :height, Integer

              # @!attribute size
              #
              #   @return [Integer, nil]
              optional :size, Integer

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!attribute width
              #
              #   @return [Integer, nil]
              optional :width, Integer

              # @!method initialize(height: nil, size: nil, url: nil, width: nil)
              #   @param height [Integer]
              #   @param size [Integer]
              #   @param url [String]
              #   @param width [Integer]
            end
          end

          class ListState < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute can_add_media
            #
            #   @return [Boolean, nil]
            optional :can_add_media, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddMedia

            # @!attribute has_media
            #
            #   @return [Boolean, nil]
            optional :has_media, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMedia

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, can_add_media: nil, has_media: nil, name: nil, type: nil)
            #   @param id [Integer]
            #   @param can_add_media [Boolean]
            #   @param has_media [Boolean]
            #   @param name [String]
            #   @param type [String]
          end

          # @see Onlyfansapi::Models::Media::VaultRetrieveResponse::Data#video_sources
          class VideoSources < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute number_240
            #
            #   @return [String, nil]
            optional :number_240, String, api_name: :"240", nil?: true

            # @!attribute number_720
            #
            #   @return [String, nil]
            optional :number_720, String, api_name: :"720", nil?: true

            # @!method initialize(number_240: nil, number_720: nil)
            #   @param number_240 [String, nil]
            #   @param number_720 [String, nil]
          end
        end
      end
    end
  end
end
