# typed: strong

module Onlyfans
  module Models
    module Media
      module Vault
        module Lists
          class MediaRemoveResponse < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta
                )
              )
            end
            attr_reader :_meta

            sig do
              params(
                _meta:
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::OrHash
              ).void
            end
            attr_writer :_meta

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Data
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                _meta:
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::OrHash,
                data:
                  Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_meta: nil, data: nil)
            end

            sig do
              override.returns(
                {
                  _meta:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta,
                  data:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Data
                }
              )
            end
            def to_hash
            end

            class Meta < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache
                  )
                )
              end
              attr_reader :_cache

              sig do
                params(
                  _cache:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache::OrHash
                ).void
              end
              attr_writer :_cache

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits
                  )
                )
              end
              attr_reader :_credits

              sig do
                params(
                  _credits:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits::OrHash
                ).void
              end
              attr_writer :_credits

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits
                  )
                )
              end
              attr_reader :_rate_limits

              sig do
                params(
                  _rate_limits:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits::OrHash
                ).void
              end
              attr_writer :_rate_limits

              sig do
                params(
                  _cache:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache::OrHash,
                  _credits:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits::OrHash,
                  _rate_limits:
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits::OrHash
                ).returns(T.attached_class)
              end
              def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
              end

              sig do
                override.returns(
                  {
                    _cache:
                      Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache,
                    _credits:
                      Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits,
                    _rate_limits:
                      Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits
                  }
                )
              end
              def to_hash
              end

              class Cache < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Cache,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :is_cached

                sig { params(is_cached: T::Boolean).void }
                attr_writer :is_cached

                sig { returns(T.nilable(String)) }
                attr_reader :note

                sig { params(note: String).void }
                attr_writer :note

                sig do
                  params(is_cached: T::Boolean, note: String).returns(
                    T.attached_class
                  )
                end
                def self.new(is_cached: nil, note: nil)
                end

                sig do
                  override.returns({ is_cached: T::Boolean, note: String })
                end
                def to_hash
                end
              end

              class Credits < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::Credits,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :balance

                sig { params(balance: Integer).void }
                attr_writer :balance

                sig { returns(T.nilable(String)) }
                attr_reader :note

                sig { params(note: String).void }
                attr_writer :note

                sig { returns(T.nilable(Integer)) }
                attr_reader :used

                sig { params(used: Integer).void }
                attr_writer :used

                sig do
                  params(balance: Integer, note: String, used: Integer).returns(
                    T.attached_class
                  )
                end
                def self.new(balance: nil, note: nil, used: nil)
                end

                sig do
                  override.returns(
                    { balance: Integer, note: String, used: Integer }
                  )
                end
                def to_hash
                end
              end

              class RateLimits < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta::RateLimits,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :limit_day

                sig { params(limit_day: Integer).void }
                attr_writer :limit_day

                sig { returns(T.nilable(Integer)) }
                attr_reader :limit_minute

                sig { params(limit_minute: Integer).void }
                attr_writer :limit_minute

                sig { returns(T.nilable(Integer)) }
                attr_reader :remaining_day

                sig { params(remaining_day: Integer).void }
                attr_writer :remaining_day

                sig { returns(T.nilable(Integer)) }
                attr_reader :remaining_minute

                sig { params(remaining_minute: Integer).void }
                attr_writer :remaining_minute

                sig do
                  params(
                    limit_day: Integer,
                    limit_minute: Integer,
                    remaining_day: Integer,
                    remaining_minute: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  limit_day: nil,
                  limit_minute: nil,
                  remaining_day: nil,
                  remaining_minute: nil
                )
                end

                sig do
                  override.returns(
                    {
                      limit_day: Integer,
                      limit_minute: Integer,
                      remaining_day: Integer,
                      remaining_minute: Integer
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Data < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Data,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(Integer)) }
              attr_reader :audios_count

              sig { params(audios_count: Integer).void }
              attr_writer :audios_count

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :can_delete

              sig { params(can_delete: T::Boolean).void }
              attr_writer :can_delete

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :can_update

              sig { params(can_update: T::Boolean).void }
              attr_writer :can_update

              sig { returns(T.nilable(Integer)) }
              attr_reader :gifs_count

              sig { params(gifs_count: Integer).void }
              attr_writer :gifs_count

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_media

              sig { params(has_media: T::Boolean).void }
              attr_writer :has_media

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :medias

              sig { params(medias: T::Array[T.anything]).void }
              attr_writer :medias

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(Integer)) }
              attr_reader :photos_count

              sig { params(photos_count: Integer).void }
              attr_writer :photos_count

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig { returns(T.nilable(Integer)) }
              attr_reader :videos_count

              sig { params(videos_count: Integer).void }
              attr_writer :videos_count

              sig do
                params(
                  id: Integer,
                  audios_count: Integer,
                  can_delete: T::Boolean,
                  can_update: T::Boolean,
                  gifs_count: Integer,
                  has_media: T::Boolean,
                  medias: T::Array[T.anything],
                  name: String,
                  photos_count: Integer,
                  type: String,
                  videos_count: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                audios_count: nil,
                can_delete: nil,
                can_update: nil,
                gifs_count: nil,
                has_media: nil,
                medias: nil,
                name: nil,
                photos_count: nil,
                type: nil,
                videos_count: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    audios_count: Integer,
                    can_delete: T::Boolean,
                    can_update: T::Boolean,
                    gifs_count: Integer,
                    has_media: T::Boolean,
                    medias: T::Array[T.anything],
                    name: String,
                    photos_count: Integer,
                    type: String,
                    videos_count: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
