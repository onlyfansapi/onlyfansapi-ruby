# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      module Vault
        module Lists
          # @see Onlyfansapi::Resources::Media::Vault::Lists::Media#remove
          class MediaRemoveResponse < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _meta
            #
            #   @return [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta, nil]
            optional :_meta, -> { Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta }

            # @!attribute data
            #
            #   @return [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Data, nil]
            optional :data, -> { Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Data }

            # @!method initialize(_meta: nil, data: nil)
            #   @param _meta [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta]
            #   @param data [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Data]

            # @see Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse#_meta
            class Meta < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute _cache
              #
              #   @return [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache, nil]
              optional :_cache, -> { Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache }

              # @!attribute _credits
              #
              #   @return [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits, nil]
              optional :_credits, -> { Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits }

              # @!attribute _rate_limits
              #
              #   @return [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits, nil]
              optional :_rate_limits,
                       -> { Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits }

              # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
              #   @param _cache [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache]
              #   @param _credits [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits]
              #   @param _rate_limits [Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits]

              # @see Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta#_cache
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

              # @see Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta#_credits
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

              # @see Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta#_rate_limits
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

            # @see Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse#data
            class Data < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute audios_count
              #
              #   @return [Integer, nil]
              optional :audios_count, Integer, api_name: :audiosCount

              # @!attribute can_delete
              #
              #   @return [Boolean, nil]
              optional :can_delete, Onlyfansapi::Internal::Type::Boolean, api_name: :canDelete

              # @!attribute can_update
              #
              #   @return [Boolean, nil]
              optional :can_update, Onlyfansapi::Internal::Type::Boolean, api_name: :canUpdate

              # @!attribute gifs_count
              #
              #   @return [Integer, nil]
              optional :gifs_count, Integer, api_name: :gifsCount

              # @!attribute has_media
              #
              #   @return [Boolean, nil]
              optional :has_media, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMedia

              # @!attribute medias
              #
              #   @return [Array<Object>, nil]
              optional :medias, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute photos_count
              #
              #   @return [Integer, nil]
              optional :photos_count, Integer, api_name: :photosCount

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!attribute videos_count
              #
              #   @return [Integer, nil]
              optional :videos_count, Integer, api_name: :videosCount

              # @!method initialize(id: nil, audios_count: nil, can_delete: nil, can_update: nil, gifs_count: nil, has_media: nil, medias: nil, name: nil, photos_count: nil, type: nil, videos_count: nil)
              #   @param id [Integer]
              #   @param audios_count [Integer]
              #   @param can_delete [Boolean]
              #   @param can_update [Boolean]
              #   @param gifs_count [Integer]
              #   @param has_media [Boolean]
              #   @param medias [Array<Object>]
              #   @param name [String]
              #   @param photos_count [Integer]
              #   @param type [String]
              #   @param videos_count [Integer]
            end
          end
        end
      end
    end
  end
end
