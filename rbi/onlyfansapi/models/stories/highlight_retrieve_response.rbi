# typed: strong

module Onlyfansapi
  module Models
    module Stories
      class HighlightRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::OrHash,
            data:
              Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta,
              data:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache,
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
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits,
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
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :limit_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :limit_minute

            sig { params(limit_minute: Integer).void }
            attr_writer :limit_minute

            sig { returns(T.nilable(String)) }
            attr_reader :notice

            sig { params(notice: String).void }
            attr_writer :notice

            sig { returns(T.nilable(String)) }
            attr_accessor :remaining_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :remaining_minute

            sig { params(remaining_minute: Integer).void }
            attr_writer :remaining_minute

            sig do
              params(
                limit_day: T.nilable(String),
                limit_minute: Integer,
                notice: String,
                remaining_day: T.nilable(String),
                remaining_minute: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              limit_day: nil,
              limit_minute: nil,
              notice: nil,
              remaining_day: nil,
              remaining_minute: nil
            )
            end

            sig do
              override.returns(
                {
                  limit_day: T.nilable(String),
                  limit_minute: Integer,
                  notice: String,
                  remaining_day: T.nilable(String),
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
                Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :cover

          sig { params(cover: String).void }
          attr_writer :cover

          sig { returns(T.nilable(Integer)) }
          attr_reader :cover_story_id

          sig { params(cover_story_id: Integer).void }
          attr_writer :cover_story_id

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story
                ]
              )
            )
          end
          attr_reader :stories

          sig do
            params(
              stories:
                T::Array[
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::OrHash
                ]
            ).void
          end
          attr_writer :stories

          sig { returns(T.nilable(Integer)) }
          attr_reader :stories_count

          sig { params(stories_count: Integer).void }
          attr_writer :stories_count

          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig { returns(T.nilable(Integer)) }
          attr_reader :user_id

          sig { params(user_id: Integer).void }
          attr_writer :user_id

          sig do
            params(
              id: Integer,
              cover: String,
              cover_story_id: Integer,
              created_at: String,
              stories:
                T::Array[
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::OrHash
                ],
              stories_count: Integer,
              title: String,
              user_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            cover: nil,
            cover_story_id: nil,
            created_at: nil,
            stories: nil,
            stories_count: nil,
            title: nil,
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                cover: String,
                cover_story_id: Integer,
                created_at: String,
                stories:
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story
                  ],
                stories_count: Integer,
                title: String,
                user_id: Integer
              }
            )
          end
          def to_hash
          end

          class Story < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_delete

            sig { params(can_delete: T::Boolean).void }
            attr_writer :can_delete

            sig { returns(T.nilable(Integer)) }
            attr_reader :canvas_height

            sig { params(canvas_height: Integer).void }
            attr_writer :canvas_height

            sig { returns(T.nilable(Integer)) }
            attr_reader :canvas_width

            sig { params(canvas_width: Integer).void }
            attr_writer :canvas_width

            sig { returns(T.nilable(Integer)) }
            attr_reader :comments_count

            sig { params(comments_count: Integer).void }
            attr_writer :comments_count

            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_post

            sig { params(has_post: T::Boolean).void }
            attr_writer :has_post

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_highlight_cover

            sig { params(is_highlight_cover: T::Boolean).void }
            attr_writer :is_highlight_cover

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_last_in_highlight

            sig { params(is_last_in_highlight: T::Boolean).void }
            attr_writer :is_last_in_highlight

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_ready

            sig { params(is_ready: T::Boolean).void }
            attr_writer :is_ready

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_watched

            sig { params(is_watched: T::Boolean).void }
            attr_writer :is_watched

            sig { returns(T.nilable(Integer)) }
            attr_reader :likes_count

            sig { params(likes_count: Integer).void }
            attr_writer :likes_count

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media
                  ]
                )
              )
            end
            attr_reader :media

            sig do
              params(
                media:
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::OrHash
                  ]
              ).void
            end
            attr_writer :media

            sig { returns(T.nilable(String)) }
            attr_accessor :question

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :release_forms

            sig { params(release_forms: T::Array[T.anything]).void }
            attr_writer :release_forms

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text
                  ]
                )
              )
            end
            attr_reader :texts

            sig do
              params(
                texts:
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text::OrHash
                  ]
              ).void
            end
            attr_writer :texts

            sig { returns(T.nilable(String)) }
            attr_reader :tips_amount

            sig { params(tips_amount: String).void }
            attr_writer :tips_amount

            sig { returns(T.nilable(Integer)) }
            attr_reader :tips_amount_raw

            sig { params(tips_amount_raw: Integer).void }
            attr_writer :tips_amount_raw

            sig { returns(T.nilable(Integer)) }
            attr_reader :tips_count

            sig { params(tips_count: Integer).void }
            attr_writer :tips_count

            sig { returns(T.nilable(Integer)) }
            attr_reader :user_id

            sig { params(user_id: Integer).void }
            attr_writer :user_id

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :viewers

            sig { params(viewers: T::Array[T.anything]).void }
            attr_writer :viewers

            sig { returns(T.nilable(Integer)) }
            attr_reader :viewers_count

            sig { params(viewers_count: Integer).void }
            attr_writer :viewers_count

            sig do
              params(
                id: Integer,
                can_delete: T::Boolean,
                canvas_height: Integer,
                canvas_width: Integer,
                comments_count: Integer,
                created_at: String,
                has_post: T::Boolean,
                is_highlight_cover: T::Boolean,
                is_last_in_highlight: T::Boolean,
                is_ready: T::Boolean,
                is_watched: T::Boolean,
                likes_count: Integer,
                media:
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::OrHash
                  ],
                question: T.nilable(String),
                release_forms: T::Array[T.anything],
                texts:
                  T::Array[
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text::OrHash
                  ],
                tips_amount: String,
                tips_amount_raw: Integer,
                tips_count: Integer,
                user_id: Integer,
                viewers: T::Array[T.anything],
                viewers_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              can_delete: nil,
              canvas_height: nil,
              canvas_width: nil,
              comments_count: nil,
              created_at: nil,
              has_post: nil,
              is_highlight_cover: nil,
              is_last_in_highlight: nil,
              is_ready: nil,
              is_watched: nil,
              likes_count: nil,
              media: nil,
              question: nil,
              release_forms: nil,
              texts: nil,
              tips_amount: nil,
              tips_amount_raw: nil,
              tips_count: nil,
              user_id: nil,
              viewers: nil,
              viewers_count: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  can_delete: T::Boolean,
                  canvas_height: Integer,
                  canvas_width: Integer,
                  comments_count: Integer,
                  created_at: String,
                  has_post: T::Boolean,
                  is_highlight_cover: T::Boolean,
                  is_last_in_highlight: T::Boolean,
                  is_ready: T::Boolean,
                  is_watched: T::Boolean,
                  likes_count: Integer,
                  media:
                    T::Array[
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media
                    ],
                  question: T.nilable(String),
                  release_forms: T::Array[T.anything],
                  texts:
                    T::Array[
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text
                    ],
                  tips_amount: String,
                  tips_amount_raw: Integer,
                  tips_count: Integer,
                  user_id: Integer,
                  viewers: T::Array[T.anything],
                  viewers_count: Integer
                }
              )
            end
            def to_hash
            end

            class Media < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media,
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
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files
                  )
                )
              end
              attr_reader :files

              sig do
                params(
                  files:
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::OrHash
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
              attr_reader :is_ready

              sig { params(is_ready: T::Boolean).void }
              attr_writer :is_ready

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources
                  )
                )
              end
              attr_reader :video_sources

              sig do
                params(
                  video_sources:
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources::OrHash
                ).void
              end
              attr_writer :video_sources

              sig do
                params(
                  id: Integer,
                  can_view: T::Boolean,
                  converted_to_video: T::Boolean,
                  created_at: String,
                  duration: Integer,
                  files:
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::OrHash,
                  has_custom_preview: T::Boolean,
                  has_error: T::Boolean,
                  is_ready: T::Boolean,
                  type: String,
                  video_sources:
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                can_view: nil,
                converted_to_video: nil,
                created_at: nil,
                duration: nil,
                files: nil,
                has_custom_preview: nil,
                has_error: nil,
                is_ready: nil,
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
                    created_at: String,
                    duration: Integer,
                    files:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files,
                    has_custom_preview: T::Boolean,
                    has_error: T::Boolean,
                    is_ready: T::Boolean,
                    type: String,
                    video_sources:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources
                  }
                )
              end
              def to_hash
              end

              class Files < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full
                    )
                  )
                end
                attr_reader :full

                sig do
                  params(
                    full:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full::OrHash
                  ).void
                end
                attr_writer :full

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview
                    )
                  )
                end
                attr_reader :preview

                sig do
                  params(
                    preview:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::OrHash
                  ).void
                end
                attr_writer :preview

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview
                    )
                  )
                end
                attr_reader :square_preview

                sig do
                  params(
                    square_preview:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::OrHash
                  ).void
                end
                attr_writer :square_preview

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb
                    )
                  )
                end
                attr_reader :thumb

                sig do
                  params(
                    thumb:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb::OrHash
                  ).void
                end
                attr_writer :thumb

                sig do
                  params(
                    full:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full::OrHash,
                    preview:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::OrHash,
                    square_preview:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::OrHash,
                    thumb:
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb::OrHash
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
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full,
                      preview:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview,
                      square_preview:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview,
                      thumb:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb
                    }
                  )
                end
                def to_hash
                end

                class Full < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full,
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

                class Preview < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview,
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

                  sig do
                    returns(
                      T.nilable(
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources
                      )
                    )
                  end
                  attr_reader :sources

                  sig do
                    params(
                      sources:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources::OrHash
                    ).void
                  end
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
                      sources:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources::OrHash,
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
                        sources:
                          Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources,
                        url: String,
                        width: Integer
                      }
                    )
                  end
                  def to_hash
                  end

                  class Sources < Onlyfansapi::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources,
                          Onlyfansapi::Internal::AnyHash
                        )
                      end

                    sig { returns(T.nilable(String)) }
                    attr_reader :w150

                    sig { params(w150: String).void }
                    attr_writer :w150

                    sig { params(w150: String).returns(T.attached_class) }
                    def self.new(w150: nil)
                    end

                    sig { override.returns({ w150: String }) }
                    def to_hash
                    end
                  end
                end

                class SquarePreview < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview,
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

                  sig do
                    returns(
                      T.nilable(
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources
                      )
                    )
                  end
                  attr_reader :sources

                  sig do
                    params(
                      sources:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources::OrHash
                    ).void
                  end
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
                      sources:
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources::OrHash,
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
                        sources:
                          Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources,
                        url: String,
                        width: Integer
                      }
                    )
                  end
                  def to_hash
                  end

                  class Sources < Onlyfansapi::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources,
                          Onlyfansapi::Internal::AnyHash
                        )
                      end

                    sig { returns(T.nilable(String)) }
                    attr_reader :w150

                    sig { params(w150: String).void }
                    attr_writer :w150

                    sig { returns(T.nilable(String)) }
                    attr_reader :w480

                    sig { params(w480: String).void }
                    attr_writer :w480

                    sig do
                      params(w150: String, w480: String).returns(
                        T.attached_class
                      )
                    end
                    def self.new(w150: nil, w480: nil)
                    end

                    sig { override.returns({ w150: String, w480: String }) }
                    def to_hash
                    end
                  end
                end

                class Thumb < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb,
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
                      url: String,
                      width: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(height: nil, size: nil, url: nil, width: nil)
                  end

                  sig do
                    override.returns(
                      {
                        height: Integer,
                        size: Integer,
                        url: String,
                        width: Integer
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end

              class VideoSources < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources,
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

            class Text < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :angle

              sig { params(angle: Integer).void }
              attr_writer :angle

              sig { returns(T.nilable(String)) }
              attr_reader :bg_color

              sig { params(bg_color: String).void }
              attr_writer :bg_color

              sig { returns(T.nilable(String)) }
              attr_reader :color

              sig { params(color: String).void }
              attr_writer :color

              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(String)) }
              attr_accessor :font_style

              sig { returns(T.nilable(Integer)) }
              attr_reader :font_weight

              sig { params(font_weight: Integer).void }
              attr_writer :font_weight

              sig { returns(T.nilable(Float)) }
              attr_reader :left

              sig { params(left: Float).void }
              attr_writer :left

              sig { returns(T.nilable(Float)) }
              attr_reader :scale

              sig { params(scale: Float).void }
              attr_writer :scale

              sig { returns(T.nilable(String)) }
              attr_reader :text

              sig { params(text: String).void }
              attr_writer :text

              sig { returns(T.nilable(String)) }
              attr_reader :text_align

              sig { params(text_align: String).void }
              attr_writer :text_align

              sig { returns(T.nilable(Float)) }
              attr_reader :text_height

              sig { params(text_height: Float).void }
              attr_writer :text_height

              sig { returns(T.nilable(Float)) }
              attr_reader :text_width

              sig { params(text_width: Float).void }
              attr_writer :text_width

              sig { returns(T.nilable(Float)) }
              attr_reader :top

              sig { params(top: Float).void }
              attr_writer :top

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :users

              sig { params(users: T::Array[T.anything]).void }
              attr_writer :users

              sig { returns(T.nilable(Integer)) }
              attr_reader :z_index

              sig { params(z_index: Integer).void }
              attr_writer :z_index

              sig do
                params(
                  angle: Integer,
                  bg_color: String,
                  color: String,
                  font_family: String,
                  font_size: String,
                  font_style: T.nilable(String),
                  font_weight: Integer,
                  left: Float,
                  scale: Float,
                  text: String,
                  text_align: String,
                  text_height: Float,
                  text_width: Float,
                  top: Float,
                  type: String,
                  users: T::Array[T.anything],
                  z_index: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                angle: nil,
                bg_color: nil,
                color: nil,
                font_family: nil,
                font_size: nil,
                font_style: nil,
                font_weight: nil,
                left: nil,
                scale: nil,
                text: nil,
                text_align: nil,
                text_height: nil,
                text_width: nil,
                top: nil,
                type: nil,
                users: nil,
                z_index: nil
              )
              end

              sig do
                override.returns(
                  {
                    angle: Integer,
                    bg_color: String,
                    color: String,
                    font_family: String,
                    font_size: String,
                    font_style: T.nilable(String),
                    font_weight: Integer,
                    left: Float,
                    scale: Float,
                    text: String,
                    text_align: String,
                    text_height: Float,
                    text_width: Float,
                    top: Float,
                    type: String,
                    users: T::Array[T.anything],
                    z_index: Integer
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
