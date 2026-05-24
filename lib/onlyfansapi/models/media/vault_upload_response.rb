# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Vault#upload
      class VaultUploadResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Media::VaultUploadResponse::Meta]
        #   @param data [Onlyfansapi::Models::Media::VaultUploadResponse::Data]

        # @see Onlyfansapi::Models::Media::VaultUploadResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Media::VaultUploadResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Media::VaultUploadResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Media::VaultUploadResponse::Meta#_rate_limits
          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute limit_day
            #
            #   @return [String, nil]
            optional :limit_day, String, nil?: true

            # @!attribute limit_minute
            #
            #   @return [Integer, nil]
            optional :limit_minute, Integer

            # @!attribute remaining_day
            #
            #   @return [String, nil]
            optional :remaining_day, String, nil?: true

            # @!attribute remaining_minute
            #
            #   @return [Integer, nil]
            optional :remaining_minute, Integer

            # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
            #   @param limit_day [String, nil]
            #   @param limit_minute [Integer]
            #   @param remaining_day [String, nil]
            #   @param remaining_minute [Integer]
          end
        end

        # @see Onlyfansapi::Models::Media::VaultUploadResponse#data
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
          #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files, nil]
          optional :files, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files }

          # @!attribute has_custom_preview
          #
          #   @return [Boolean, nil]
          optional :has_custom_preview, Onlyfansapi::Internal::Type::Boolean, api_name: :hasCustomPreview

          # @!attribute has_error
          #
          #   @return [Boolean, nil]
          optional :has_error, Onlyfansapi::Internal::Type::Boolean, api_name: :hasError

          # @!attribute is_ready
          #
          #   @return [Boolean, nil]
          optional :is_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isReady

          # @!attribute release_forms
          #
          #   @return [Array<Object>, nil]
          optional :release_forms,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :releaseForms

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, release_forms: nil, type: nil)
          #   @param id [Integer]
          #   @param can_view [Boolean]
          #   @param converted_to_video [Boolean]
          #   @param created_at [String]
          #   @param duration [Integer]
          #   @param files [Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files]
          #   @param has_custom_preview [Boolean]
          #   @param has_error [Boolean]
          #   @param is_ready [Boolean]
          #   @param release_forms [Array<Object>]
          #   @param type [String]

          # @see Onlyfansapi::Models::Media::VaultUploadResponse::Data#files
          class Files < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute full
            #
            #   @return [Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full, nil]
            optional :full, -> { Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full }

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
            #   @param full [Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full]
            #   @param preview [String, nil]
            #   @param square_preview [String, nil]
            #   @param thumb [String, nil]

            # @see Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files#full
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
              optional :url, String, nil?: true

              # @!attribute width
              #
              #   @return [Integer, nil]
              optional :width, Integer

              # @!method initialize(height: nil, size: nil, sources: nil, url: nil, width: nil)
              #   @param height [Integer]
              #   @param size [Integer]
              #   @param sources [Array<Object>]
              #   @param url [String, nil]
              #   @param width [Integer]
            end
          end
        end
      end
    end
  end
end
