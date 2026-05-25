# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      # @see Onlyfans::Resources::Media::Vault#list
      class VaultListResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Media::VaultListResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Media::VaultListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Media::VaultListResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Media::VaultListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Media::VaultListResponse::Meta]
        #   @param data [Onlyfans::Models::Media::VaultListResponse::Data]

        # @see Onlyfans::Models::Media::VaultListResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Media::VaultListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Media::VaultListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Media::VaultListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Media::VaultListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Media::VaultListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Media::VaultListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Media::VaultListResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Media::VaultListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Media::VaultListResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Media::VaultListResponse::Meta#_cache
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

          # @see Onlyfans::Models::Media::VaultListResponse::Meta#_credits
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

          # @see Onlyfans::Models::Media::VaultListResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Media::VaultListResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfans::Models::Media::VaultListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Media::VaultListResponse::Data::List] }

          # @!method initialize(has_more: nil, list: nil)
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfans::Models::Media::VaultListResponse::Data::List>]

          class List < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute can_view
            #
            #   @return [Boolean, nil]
            optional :can_view, Onlyfans::Internal::Type::Boolean, api_name: :canView

            # @!attribute converted_to_video
            #
            #   @return [Boolean, nil]
            optional :converted_to_video, Onlyfans::Internal::Type::Boolean, api_name: :convertedToVideo

            # @!attribute counters
            #
            #   @return [Onlyfans::Models::Media::VaultListResponse::Data::List::Counters, nil]
            optional :counters, -> { Onlyfans::Models::Media::VaultListResponse::Data::List::Counters }

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
            #   @return [Onlyfans::Models::Media::VaultListResponse::Data::List::Files, nil]
            optional :files, -> { Onlyfans::Models::Media::VaultListResponse::Data::List::Files }

            # @!attribute has_custom_preview
            #
            #   @return [Boolean, nil]
            optional :has_custom_preview, Onlyfans::Internal::Type::Boolean, api_name: :hasCustomPreview

            # @!attribute has_error
            #
            #   @return [Boolean, nil]
            optional :has_error, Onlyfans::Internal::Type::Boolean, api_name: :hasError

            # @!attribute has_posts
            #
            #   @return [Boolean, nil]
            optional :has_posts, Onlyfans::Internal::Type::Boolean, api_name: :hasPosts

            # @!attribute is_ready
            #
            #   @return [Boolean, nil]
            optional :is_ready, Onlyfans::Internal::Type::Boolean, api_name: :isReady

            # @!attribute list_states
            #
            #   @return [Array<Onlyfans::Models::Media::VaultListResponse::Data::List::ListState>, nil]
            optional :list_states,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Media::VaultListResponse::Data::List::ListState] },
                     api_name: :listStates

            # @!attribute release_forms
            #
            #   @return [Array<Object>, nil]
            optional :release_forms,
                     Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown],
                     api_name: :releaseForms

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute video_sources
            #
            #   @return [Onlyfans::Models::Media::VaultListResponse::Data::List::VideoSources, nil]
            optional :video_sources,
                     -> { Onlyfans::Models::Media::VaultListResponse::Data::List::VideoSources },
                     api_name: :videoSources

            # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, counters: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, has_posts: nil, is_ready: nil, list_states: nil, release_forms: nil, type: nil, video_sources: nil)
            #   @param id [Integer]
            #   @param can_view [Boolean]
            #   @param converted_to_video [Boolean]
            #   @param counters [Onlyfans::Models::Media::VaultListResponse::Data::List::Counters]
            #   @param created_at [String]
            #   @param duration [Integer]
            #   @param files [Onlyfans::Models::Media::VaultListResponse::Data::List::Files]
            #   @param has_custom_preview [Boolean]
            #   @param has_error [Boolean]
            #   @param has_posts [Boolean]
            #   @param is_ready [Boolean]
            #   @param list_states [Array<Onlyfans::Models::Media::VaultListResponse::Data::List::ListState>]
            #   @param release_forms [Array<Object>]
            #   @param type [String]
            #   @param video_sources [Onlyfans::Models::Media::VaultListResponse::Data::List::VideoSources]

            # @see Onlyfans::Models::Media::VaultListResponse::Data::List#counters
            class Counters < Onlyfans::Internal::Type::BaseModel
              # @!attribute likes_count
              #
              #   @return [Integer, nil]
              optional :likes_count, Integer, api_name: :likesCount

              # @!attribute tips_summ
              #
              #   @return [Integer, nil]
              optional :tips_summ, Integer, api_name: :tipsSumm

              # @!method initialize(likes_count: nil, tips_summ: nil)
              #   @param likes_count [Integer]
              #   @param tips_summ [Integer]
            end

            # @see Onlyfans::Models::Media::VaultListResponse::Data::List#files
            class Files < Onlyfans::Internal::Type::BaseModel
              # @!attribute full
              #
              #   @return [Onlyfans::Models::Media::VaultListResponse::Data::List::Files::Full, nil]
              optional :full, -> { Onlyfans::Models::Media::VaultListResponse::Data::List::Files::Full }

              # @!attribute preview
              #
              #   @return [String, nil]
              optional :preview, String, nil?: true

              # @!attribute square_preview
              #
              #   @return [String, nil]
              optional :square_preview, String, api_name: :squarePreview, nil?: true

              # @!attribute thumb
              #
              #   @return [String, nil]
              optional :thumb, String, nil?: true

              # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
              #   @param full [Onlyfans::Models::Media::VaultListResponse::Data::List::Files::Full]
              #   @param preview [String, nil]
              #   @param square_preview [String, nil]
              #   @param thumb [String, nil]

              # @see Onlyfans::Models::Media::VaultListResponse::Data::List::Files#full
              class Full < Onlyfans::Internal::Type::BaseModel
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
                optional :sources, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
            end

            class ListState < Onlyfans::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute can_add_media
              #
              #   @return [Boolean, nil]
              optional :can_add_media, Onlyfans::Internal::Type::Boolean, api_name: :canAddMedia

              # @!attribute has_media
              #
              #   @return [Boolean, nil]
              optional :has_media, Onlyfans::Internal::Type::Boolean, api_name: :hasMedia

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

            # @see Onlyfans::Models::Media::VaultListResponse::Data::List#video_sources
            class VideoSources < Onlyfans::Internal::Type::BaseModel
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
end
