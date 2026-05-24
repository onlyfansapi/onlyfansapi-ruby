# typed: strong

module Onlyfansapi
  module Models
    module Media
      class VaultListResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Media::VaultListResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::Media::VaultListResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta: Onlyfansapi::Models::Media::VaultListResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::Media::VaultListResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfansapi::Models::Media::VaultListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta: Onlyfansapi::Models::Media::VaultListResponse::Meta::OrHash,
            data: Onlyfansapi::Models::Media::VaultListResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfansapi::Models::Media::VaultListResponse::Meta,
              data: Onlyfansapi::Models::Media::VaultListResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::VaultListResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultListResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Media::VaultListResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultListResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Media::VaultListResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultListResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Media::VaultListResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Media::VaultListResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Media::VaultListResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Media::VaultListResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Media::VaultListResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Media::VaultListResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Media::VaultListResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultListResponse::Meta::Cache,
                  Onlyfansapi::Internal::AnyHash
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

            sig { override.returns({ is_cached: T::Boolean, note: String }) }
            def to_hash
            end
          end

          class Credits < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultListResponse::Meta::Credits,
                  Onlyfansapi::Internal::AnyHash
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

          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultListResponse::Meta::RateLimits,
                  Onlyfansapi::Internal::AnyHash
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

        class Data < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::VaultListResponse::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_more

          sig { params(has_more: T::Boolean).void }
          attr_writer :has_more

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List
                ]
              )
            )
          end
          attr_reader :list

          sig do
            params(
              list:
                T::Array[
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::OrHash
                ]
            ).void
          end
          attr_writer :list

          sig do
            params(
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(has_more: nil, list: nil)
          end

          sig do
            override.returns(
              {
                has_more: T::Boolean,
                list:
                  T::Array[
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List
                  ]
              }
            )
          end
          def to_hash
          end

          class List < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_view

            sig { params(can_view: T::Boolean).void }
            attr_writer :can_view

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :converted_to_video

            sig { params(converted_to_video: T::Boolean).void }
            attr_writer :converted_to_video

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::Counters
                )
              )
            end
            attr_reader :counters

            sig do
              params(
                counters:
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::Counters::OrHash
              ).void
            end
            attr_writer :counters

            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :duration

            sig { params(duration: Integer).void }
            attr_writer :duration

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files
                )
              )
            end
            attr_reader :files

            sig do
              params(
                files:
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::OrHash
              ).void
            end
            attr_writer :files

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_custom_preview

            sig { params(has_custom_preview: T::Boolean).void }
            attr_writer :has_custom_preview

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_error

            sig { params(has_error: T::Boolean).void }
            attr_writer :has_error

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_posts

            sig { params(has_posts: T::Boolean).void }
            attr_writer :has_posts

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_ready

            sig { params(is_ready: T::Boolean).void }
            attr_writer :is_ready

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::ListState
                  ]
                )
              )
            end
            attr_reader :list_states

            sig do
              params(
                list_states:
                  T::Array[
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::ListState::OrHash
                  ]
              ).void
            end
            attr_writer :list_states

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :release_forms

            sig { params(release_forms: T::Array[T.anything]).void }
            attr_writer :release_forms

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::VideoSources
                )
              )
            end
            attr_reader :video_sources

            sig do
              params(
                video_sources:
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::VideoSources::OrHash
              ).void
            end
            attr_writer :video_sources

            sig do
              params(
                id: Integer,
                can_view: T::Boolean,
                converted_to_video: T::Boolean,
                counters:
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::Counters::OrHash,
                created_at: String,
                duration: Integer,
                files:
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::OrHash,
                has_custom_preview: T::Boolean,
                has_error: T::Boolean,
                has_posts: T::Boolean,
                is_ready: T::Boolean,
                list_states:
                  T::Array[
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::ListState::OrHash
                  ],
                release_forms: T::Array[T.anything],
                type: String,
                video_sources:
                  Onlyfansapi::Models::Media::VaultListResponse::Data::List::VideoSources::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              can_view: nil,
              converted_to_video: nil,
              counters: nil,
              created_at: nil,
              duration: nil,
              files: nil,
              has_custom_preview: nil,
              has_error: nil,
              has_posts: nil,
              is_ready: nil,
              list_states: nil,
              release_forms: nil,
              type: nil,
              video_sources: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  can_view: T::Boolean,
                  converted_to_video: T::Boolean,
                  counters:
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Counters,
                  created_at: String,
                  duration: Integer,
                  files:
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files,
                  has_custom_preview: T::Boolean,
                  has_error: T::Boolean,
                  has_posts: T::Boolean,
                  is_ready: T::Boolean,
                  list_states:
                    T::Array[
                      Onlyfansapi::Models::Media::VaultListResponse::Data::List::ListState
                    ],
                  release_forms: T::Array[T.anything],
                  type: String,
                  video_sources:
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::VideoSources
                }
              )
            end
            def to_hash
            end

            class Counters < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Counters,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :likes_count

              sig { params(likes_count: Integer).void }
              attr_writer :likes_count

              sig { returns(T.nilable(Integer)) }
              attr_reader :tips_summ

              sig { params(tips_summ: Integer).void }
              attr_writer :tips_summ

              sig do
                params(likes_count: Integer, tips_summ: Integer).returns(
                  T.attached_class
                )
              end
              def self.new(likes_count: nil, tips_summ: nil)
              end

              sig do
                override.returns({ likes_count: Integer, tips_summ: Integer })
              end
              def to_hash
              end
            end

            class Files < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::Full
                  )
                )
              end
              attr_reader :full

              sig do
                params(
                  full:
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::Full::OrHash
                ).void
              end
              attr_writer :full

              sig { returns(T.nilable(String)) }
              attr_accessor :preview

              sig { returns(T.nilable(String)) }
              attr_accessor :square_preview

              sig { returns(T.nilable(String)) }
              attr_accessor :thumb

              sig do
                params(
                  full:
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::Full::OrHash,
                  preview: T.nilable(String),
                  square_preview: T.nilable(String),
                  thumb: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                full: nil,
                preview: nil,
                square_preview: nil,
                thumb: nil
              )
              end

              sig do
                override.returns(
                  {
                    full:
                      Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::Full,
                    preview: T.nilable(String),
                    square_preview: T.nilable(String),
                    thumb: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Full < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Media::VaultListResponse::Data::List::Files::Full,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :height

                sig { params(height: Integer).void }
                attr_writer :height

                sig { returns(T.nilable(Integer)) }
                attr_reader :size

                sig { params(size: Integer).void }
                attr_writer :size

                sig { returns(T.nilable(T::Array[T.anything])) }
                attr_reader :sources

                sig { params(sources: T::Array[T.anything]).void }
                attr_writer :sources

                sig { returns(T.nilable(String)) }
                attr_reader :url

                sig { params(url: String).void }
                attr_writer :url

                sig { returns(T.nilable(Integer)) }
                attr_reader :width

                sig { params(width: Integer).void }
                attr_writer :width

                sig do
                  params(
                    height: Integer,
                    size: Integer,
                    sources: T::Array[T.anything],
                    url: String,
                    width: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  height: nil,
                  size: nil,
                  sources: nil,
                  url: nil,
                  width: nil
                )
                end

                sig do
                  override.returns(
                    {
                      height: Integer,
                      size: Integer,
                      sources: T::Array[T.anything],
                      url: String,
                      width: Integer
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class ListState < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::ListState,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :can_add_media

              sig { params(can_add_media: T::Boolean).void }
              attr_writer :can_add_media

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_media

              sig { params(has_media: T::Boolean).void }
              attr_writer :has_media

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig do
                params(
                  id: Integer,
                  can_add_media: T::Boolean,
                  has_media: T::Boolean,
                  name: String,
                  type: String
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                can_add_media: nil,
                has_media: nil,
                name: nil,
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    can_add_media: T::Boolean,
                    has_media: T::Boolean,
                    name: String,
                    type: String
                  }
                )
              end
              def to_hash
              end
            end

            class VideoSources < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::VaultListResponse::Data::List::VideoSources,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :number_240

              sig { returns(T.nilable(String)) }
              attr_accessor :number_720

              sig do
                params(
                  number_240: T.nilable(String),
                  number_720: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(number_240: nil, number_720: nil)
              end

              sig do
                override.returns(
                  {
                    number_240: T.nilable(String),
                    number_720: T.nilable(String)
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
