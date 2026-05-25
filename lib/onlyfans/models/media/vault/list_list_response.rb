# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      module Vault
        # @see Onlyfans::Resources::Media::Vault::Lists#list
        class ListListResponse < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::Media::Vault::ListListResponse::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::Media::Vault::ListListResponse::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::Media::Vault::ListListResponse::Data, nil]
          optional :data, -> { Onlyfans::Models::Media::Vault::ListListResponse::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   @param _meta [Onlyfans::Models::Media::Vault::ListListResponse::Meta]
          #   @param data [Onlyfans::Models::Media::Vault::ListListResponse::Data]

          # @see Onlyfans::Models::Media::Vault::ListListResponse#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::Media::Vault::ListListResponse::Meta::Cache, nil]
            optional :_cache, -> { Onlyfans::Models::Media::Vault::ListListResponse::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::Media::Vault::ListListResponse::Meta::Credits, nil]
            optional :_credits, -> { Onlyfans::Models::Media::Vault::ListListResponse::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::Media::Vault::ListListResponse::Meta::RateLimits, nil]
            optional :_rate_limits, -> { Onlyfans::Models::Media::Vault::ListListResponse::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::Media::Vault::ListListResponse::Meta::Cache]
            #   @param _credits [Onlyfans::Models::Media::Vault::ListListResponse::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::Media::Vault::ListListResponse::Meta::RateLimits]

            # @see Onlyfans::Models::Media::Vault::ListListResponse::Meta#_cache
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

            # @see Onlyfans::Models::Media::Vault::ListListResponse::Meta#_credits
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

            # @see Onlyfans::Models::Media::Vault::ListListResponse::Meta#_rate_limits
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

          # @see Onlyfans::Models::Media::Vault::ListListResponse#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute all
            #
            #   @return [Onlyfans::Models::Media::Vault::ListListResponse::Data::All, nil]
            optional :all, -> { Onlyfans::Models::Media::Vault::ListListResponse::Data::All }

            # @!attribute can_create_vault_lists
            #
            #   @return [Boolean, nil]
            optional :can_create_vault_lists,
                     Onlyfans::Internal::Type::Boolean,
                     api_name: :canCreateVaultLists

            # @!attribute has_more
            #
            #   @return [Boolean, nil]
            optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

            # @!attribute list
            #
            #   @return [Array<Onlyfans::Models::Media::Vault::ListListResponse::Data::List>, nil]
            optional :list,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Media::Vault::ListListResponse::Data::List] }

            # @!attribute order
            #
            #   @return [String, nil]
            optional :order, String

            # @!attribute sort
            #
            #   @return [String, nil]
            optional :sort, String

            # @!method initialize(all: nil, can_create_vault_lists: nil, has_more: nil, list: nil, order: nil, sort: nil)
            #   @param all [Onlyfans::Models::Media::Vault::ListListResponse::Data::All]
            #   @param can_create_vault_lists [Boolean]
            #   @param has_more [Boolean]
            #   @param list [Array<Onlyfans::Models::Media::Vault::ListListResponse::Data::List>]
            #   @param order [String]
            #   @param sort [String]

            # @see Onlyfans::Models::Media::Vault::ListListResponse::Data#all
            class All < Onlyfans::Internal::Type::BaseModel
              # @!attribute audios_count
              #
              #   @return [Integer, nil]
              optional :audios_count, Integer, api_name: :audiosCount

              # @!attribute gifs_count
              #
              #   @return [Integer, nil]
              optional :gifs_count, Integer, api_name: :gifsCount

              # @!attribute medias
              #
              #   @return [Array<Onlyfans::Models::Media::Vault::ListListResponse::Data::All::Media>, nil]
              optional :medias,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Media::Vault::ListListResponse::Data::All::Media] }

              # @!attribute photos_count
              #
              #   @return [Integer, nil]
              optional :photos_count, Integer, api_name: :photosCount

              # @!attribute videos_count
              #
              #   @return [Integer, nil]
              optional :videos_count, Integer, api_name: :videosCount

              # @!method initialize(audios_count: nil, gifs_count: nil, medias: nil, photos_count: nil, videos_count: nil)
              #   @param audios_count [Integer]
              #   @param gifs_count [Integer]
              #   @param medias [Array<Onlyfans::Models::Media::Vault::ListListResponse::Data::All::Media>]
              #   @param photos_count [Integer]
              #   @param videos_count [Integer]

              class Media < Onlyfans::Internal::Type::BaseModel
                # @!attribute type
                #
                #   @return [String, nil]
                optional :type, String

                # @!attribute url
                #
                #   @return [String, nil]
                optional :url, String

                # @!method initialize(type: nil, url: nil)
                #   @param type [String]
                #   @param url [String]
              end
            end

            class List < Onlyfans::Internal::Type::BaseModel
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
              optional :can_delete, Onlyfans::Internal::Type::Boolean, api_name: :canDelete

              # @!attribute can_update
              #
              #   @return [Boolean, nil]
              optional :can_update, Onlyfans::Internal::Type::Boolean, api_name: :canUpdate

              # @!attribute gifs_count
              #
              #   @return [Integer, nil]
              optional :gifs_count, Integer, api_name: :gifsCount

              # @!attribute has_media
              #
              #   @return [Boolean, nil]
              optional :has_media, Onlyfans::Internal::Type::Boolean, api_name: :hasMedia

              # @!attribute medias
              #
              #   @return [Array<Object>, nil]
              optional :medias, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
