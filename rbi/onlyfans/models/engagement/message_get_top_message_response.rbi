# typed: strong

module Onlyfans
  module Models
    module Engagement
      class MessageGetTopMessageResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::OrHash,
            data:
              Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta,
              data:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Cache,
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

            sig { override.returns({ is_cached: T::Boolean, note: String }) }
            def to_hash
            end
          end

          class Credits < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::Credits,
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
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Meta::RateLimits,
                  Onlyfans::Internal::AnyHash
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

        class Data < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases
              )
            )
          end
          attr_reader :purchases

          sig do
            params(
              purchases:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::OrHash
            ).void
          end
          attr_writer :purchases

          sig do
            params(
              purchases:
                Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::OrHash
            ).returns(T.attached_class)
          end
          def self.new(purchases: nil)
          end

          sig do
            override.returns(
              {
                purchases:
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases
              }
            )
          end
          def to_hash
          end

          class Purchases < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_send_message_to_buyers

            sig { params(can_send_message_to_buyers: T::Boolean).void }
            attr_writer :can_send_message_to_buyers

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_unsend

            sig { params(can_unsend: T::Boolean).void }
            attr_writer :can_unsend

            sig { returns(T.nilable(String)) }
            attr_reader :date

            sig { params(date: String).void }
            attr_writer :date

            sig { returns(T.nilable(String)) }
            attr_accessor :giphy_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_canceled

            sig { params(is_canceled: T::Boolean).void }
            attr_writer :is_canceled

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_free

            sig { params(is_free: T::Boolean).void }
            attr_writer :is_free

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_media_ready

            sig { params(is_media_ready: T::Boolean).void }
            attr_writer :is_media_ready

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_reported_by_me

            sig { params(is_reported_by_me: T::Boolean).void }
            attr_writer :is_reported_by_me

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_tip

            sig { params(is_tip: T::Boolean).void }
            attr_writer :is_tip

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media
                  ]
                )
              )
            end
            attr_reader :media

            sig do
              params(
                media:
                  T::Array[
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::OrHash
                  ]
              ).void
            end
            attr_writer :media

            sig { returns(T.nilable(Integer)) }
            attr_reader :media_count

            sig { params(media_count: Integer).void }
            attr_writer :media_count

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :previews

            sig { params(previews: T::Array[T.anything]).void }
            attr_writer :previews

            sig { returns(T.nilable(String)) }
            attr_reader :price

            sig { params(price: String).void }
            attr_writer :price

            sig { returns(T.nilable(Integer)) }
            attr_reader :purchased_count

            sig { params(purchased_count: Integer).void }
            attr_writer :purchased_count

            sig { returns(T.nilable(String)) }
            attr_reader :raw_text

            sig { params(raw_text: String).void }
            attr_writer :raw_text

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships
                )
              )
            end
            attr_reader :relationships

            sig do
              params(
                relationships:
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::OrHash
              ).void
            end
            attr_writer :relationships

            sig { returns(T.nilable(String)) }
            attr_reader :response_type

            sig { params(response_type: String).void }
            attr_writer :response_type

            sig { returns(T.nilable(Integer)) }
            attr_reader :sent_count

            sig { params(sent_count: Integer).void }
            attr_writer :sent_count

            sig { returns(T.nilable(String)) }
            attr_reader :template

            sig { params(template: String).void }
            attr_writer :template

            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig { returns(T.nilable(String)) }
            attr_reader :total_revenue_generated

            sig { params(total_revenue_generated: String).void }
            attr_writer :total_revenue_generated

            sig { returns(T.nilable(Integer)) }
            attr_reader :unsend_seconds

            sig { params(unsend_seconds: Integer).void }
            attr_writer :unsend_seconds

            sig { returns(T.nilable(Integer)) }
            attr_reader :viewed_count

            sig { params(viewed_count: Integer).void }
            attr_writer :viewed_count

            sig do
              params(
                id: Integer,
                can_send_message_to_buyers: T::Boolean,
                can_unsend: T::Boolean,
                date: String,
                giphy_id: T.nilable(String),
                is_canceled: T::Boolean,
                is_free: T::Boolean,
                is_media_ready: T::Boolean,
                is_reported_by_me: T::Boolean,
                is_tip: T::Boolean,
                media:
                  T::Array[
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::OrHash
                  ],
                media_count: Integer,
                previews: T::Array[T.anything],
                price: String,
                purchased_count: Integer,
                raw_text: String,
                relationships:
                  Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::OrHash,
                response_type: String,
                sent_count: Integer,
                template: String,
                text: String,
                total_revenue_generated: String,
                unsend_seconds: Integer,
                viewed_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              can_send_message_to_buyers: nil,
              can_unsend: nil,
              date: nil,
              giphy_id: nil,
              is_canceled: nil,
              is_free: nil,
              is_media_ready: nil,
              is_reported_by_me: nil,
              is_tip: nil,
              media: nil,
              media_count: nil,
              previews: nil,
              price: nil,
              purchased_count: nil,
              raw_text: nil,
              relationships: nil,
              response_type: nil,
              sent_count: nil,
              template: nil,
              text: nil,
              total_revenue_generated: nil,
              unsend_seconds: nil,
              viewed_count: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  can_send_message_to_buyers: T::Boolean,
                  can_unsend: T::Boolean,
                  date: String,
                  giphy_id: T.nilable(String),
                  is_canceled: T::Boolean,
                  is_free: T::Boolean,
                  is_media_ready: T::Boolean,
                  is_reported_by_me: T::Boolean,
                  is_tip: T::Boolean,
                  media:
                    T::Array[
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media
                    ],
                  media_count: Integer,
                  previews: T::Array[T.anything],
                  price: String,
                  purchased_count: Integer,
                  raw_text: String,
                  relationships:
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships,
                  response_type: String,
                  sent_count: Integer,
                  template: String,
                  text: String,
                  total_revenue_generated: String,
                  unsend_seconds: Integer,
                  viewed_count: Integer
                }
              )
            end
            def to_hash
            end

            class Media < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media,
                    Onlyfans::Internal::AnyHash
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
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files
                  )
                )
              end
              attr_reader :files

              sig do
                params(
                  files:
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::OrHash
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
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::VideoSources
                  )
                )
              end
              attr_reader :video_sources

              sig do
                params(
                  video_sources:
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::VideoSources::OrHash
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
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::OrHash,
                  has_custom_preview: T::Boolean,
                  has_error: T::Boolean,
                  is_ready: T::Boolean,
                  type: String,
                  video_sources:
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::VideoSources::OrHash
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
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files,
                    has_custom_preview: T::Boolean,
                    has_error: T::Boolean,
                    is_ready: T::Boolean,
                    type: String,
                    video_sources:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::VideoSources
                  }
                )
              end
              def to_hash
              end

              class Files < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Full
                    )
                  )
                end
                attr_reader :full

                sig do
                  params(
                    full:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Full::OrHash
                  ).void
                end
                attr_writer :full

                sig do
                  returns(
                    T.nilable(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Preview
                    )
                  )
                end
                attr_reader :preview

                sig do
                  params(
                    preview:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Preview::OrHash
                  ).void
                end
                attr_writer :preview

                sig do
                  returns(
                    T.nilable(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::SquarePreview
                    )
                  )
                end
                attr_reader :square_preview

                sig do
                  params(
                    square_preview:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::SquarePreview::OrHash
                  ).void
                end
                attr_writer :square_preview

                sig do
                  returns(
                    T.nilable(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Thumb
                    )
                  )
                end
                attr_reader :thumb

                sig do
                  params(
                    thumb:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Thumb::OrHash
                  ).void
                end
                attr_writer :thumb

                sig do
                  params(
                    full:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Full::OrHash,
                    preview:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Preview::OrHash,
                    square_preview:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::SquarePreview::OrHash,
                    thumb:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Thumb::OrHash
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
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Full,
                      preview:
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Preview,
                      square_preview:
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::SquarePreview,
                      thumb:
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Thumb
                    }
                  )
                end
                def to_hash
                end

                class Full < Onlyfans::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Full,
                        Onlyfans::Internal::AnyHash
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

                class Preview < Onlyfans::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Preview,
                        Onlyfans::Internal::AnyHash
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

                class SquarePreview < Onlyfans::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::SquarePreview,
                        Onlyfans::Internal::AnyHash
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

                class Thumb < Onlyfans::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::Files::Thumb,
                        Onlyfans::Internal::AnyHash
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

              class VideoSources < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Media::VideoSources,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :number_240

                sig { params(number_240: String).void }
                attr_writer :number_240

                sig { returns(T.nilable(String)) }
                attr_reader :number_720

                sig { params(number_720: String).void }
                attr_writer :number_720

                sig do
                  params(number_240: String, number_720: String).returns(
                    T.attached_class
                  )
                end
                def self.new(number_240: nil, number_720: nil)
                end

                sig do
                  override.returns({ number_240: String, number_720: String })
                end
                def to_hash
                end
              end
            end

            class Relationships < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::Buyers
                  )
                )
              end
              attr_reader :buyers

              sig do
                params(
                  buyers:
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::Buyers::OrHash
                ).void
              end
              attr_writer :buyers

              sig do
                params(
                  buyers:
                    Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::Buyers::OrHash
                ).returns(T.attached_class)
              end
              def self.new(buyers: nil)
              end

              sig do
                override.returns(
                  {
                    buyers:
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::Buyers
                  }
                )
              end
              def to_hash
              end

              class Buyers < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Engagement::MessageGetTopMessageResponse::Data::Purchases::Relationships::Buyers,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :href

                sig { params(href: String).void }
                attr_writer :href

                sig { returns(T.nilable(String)) }
                attr_reader :method_

                sig { params(method_: String).void }
                attr_writer :method_

                sig do
                  params(href: String, method_: String).returns(
                    T.attached_class
                  )
                end
                def self.new(href: nil, method_: nil)
                end

                sig { override.returns({ href: String, method_: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
