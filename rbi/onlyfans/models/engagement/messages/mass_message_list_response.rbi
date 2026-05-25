# typed: strong

module Onlyfans
  module Models
    module Engagement
      module Messages
        class MassMessageListResponse < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Pagination
              )
            )
          end
          attr_reader :_pagination

          sig do
            params(
              _pagination:
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Pagination::OrHash
            ).void
          end
          attr_writer :_pagination

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              _meta:
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::OrHash,
              _pagination:
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Pagination::OrHash,
              data:
                Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, _pagination: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta,
                _pagination:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Pagination,
                data:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache,
                  _credits:
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache,
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
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits,
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
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits,
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

          class Pagination < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Pagination,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :next_page

            sig { params(next_page: String).void }
            attr_writer :next_page

            sig { params(next_page: String).returns(T.attached_class) }
            def self.new(next_page: nil)
            end

            sig { override.returns({ next_page: String }) }
            def to_hash
            end
          end

          class Data < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data,
                  Onlyfans::Internal::AnyHash
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
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::Item
                  ]
                )
              )
            end
            attr_reader :items

            sig do
              params(
                items:
                  T::Array[
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::Item::OrHash
                  ]
              ).void
            end
            attr_writer :items

            sig do
              params(
                has_more: T::Boolean,
                items:
                  T::Array[
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::Item::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(has_more: nil, items: nil)
            end

            sig do
              override.returns(
                {
                  has_more: T::Boolean,
                  items:
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::Item
                    ]
                }
              )
            end
            def to_hash
            end

            class Item < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::Messages::MassMessageListResponse::Data::Item,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

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

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :media

              sig { params(media: T::Array[T.anything]).void }
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
              attr_reader :raw_text

              sig { params(raw_text: String).void }
              attr_writer :raw_text

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
                  can_unsend: T::Boolean,
                  date: String,
                  giphy_id: T.nilable(String),
                  is_canceled: T::Boolean,
                  is_free: T::Boolean,
                  is_media_ready: T::Boolean,
                  is_reported_by_me: T::Boolean,
                  is_tip: T::Boolean,
                  media: T::Array[T.anything],
                  media_count: Integer,
                  previews: T::Array[T.anything],
                  raw_text: String,
                  response_type: String,
                  sent_count: Integer,
                  template: String,
                  text: String,
                  unsend_seconds: Integer,
                  viewed_count: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
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
                raw_text: nil,
                response_type: nil,
                sent_count: nil,
                template: nil,
                text: nil,
                unsend_seconds: nil,
                viewed_count: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    can_unsend: T::Boolean,
                    date: String,
                    giphy_id: T.nilable(String),
                    is_canceled: T::Boolean,
                    is_free: T::Boolean,
                    is_media_ready: T::Boolean,
                    is_reported_by_me: T::Boolean,
                    is_tip: T::Boolean,
                    media: T::Array[T.anything],
                    media_count: Integer,
                    previews: T::Array[T.anything],
                    raw_text: String,
                    response_type: String,
                    sent_count: Integer,
                    template: String,
                    text: String,
                    unsend_seconds: Integer,
                    viewed_count: Integer
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
