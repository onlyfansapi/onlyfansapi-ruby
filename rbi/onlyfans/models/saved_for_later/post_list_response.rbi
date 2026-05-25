# typed: strong

module Onlyfans
  module Models
    module SavedForLater
      class PostListResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SavedForLater::PostListResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::SavedForLater::PostListResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::SavedForLater::PostListResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfans::Models::SavedForLater::PostListResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfans::Models::SavedForLater::PostListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::SavedForLater::PostListResponse::Meta::OrHash,
            data:
              Onlyfans::Models::SavedForLater::PostListResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::SavedForLater::PostListResponse::Meta,
              data: Onlyfans::Models::SavedForLater::PostListResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SavedForLater::PostListResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache,
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
                  Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits,
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
                  Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits,
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
                Onlyfans::Models::SavedForLater::PostListResponse::Data,
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
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List
                ]
              )
            )
          end
          attr_reader :list

          sig do
            params(
              list:
                T::Array[
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List::OrHash
                ]
            ).void
          end
          attr_writer :list

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :sync_in_process

          sig { params(sync_in_process: T::Boolean).void }
          attr_writer :sync_in_process

          sig do
            params(
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List::OrHash
                ],
              sync_in_process: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(has_more: nil, list: nil, sync_in_process: nil)
          end

          sig do
            override.returns(
              {
                has_more: T::Boolean,
                list:
                  T::Array[
                    Onlyfans::Models::SavedForLater::PostListResponse::Data::List
                  ],
                sync_in_process: T::Boolean
              }
            )
          end
          def to_hash
          end

          class List < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :created_date_time

            sig { params(created_date_time: String).void }
            attr_writer :created_date_time

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity
                )
              )
            end
            attr_reader :entity

            sig do
              params(
                entity:
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity::OrHash
              ).void
            end
            attr_writer :entity

            sig { returns(T.nilable(String)) }
            attr_accessor :publish_date_time

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: Integer,
                created_date_time: String,
                entity:
                  Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity::OrHash,
                publish_date_time: T.nilable(String),
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              created_date_time: nil,
              entity: nil,
              publish_date_time: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  created_date_time: String,
                  entity:
                    Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity,
                  publish_date_time: T.nilable(String),
                  type: String
                }
              )
            end
            def to_hash
            end

            class Entity < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity,
                    Onlyfans::Internal::AnyHash
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

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :can_edit

              sig { params(can_edit: T::Boolean).void }
              attr_writer :can_edit

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :can_toggle_favorite

              sig { params(can_toggle_favorite: T::Boolean).void }
              attr_writer :can_toggle_favorite

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :can_view_media

              sig { params(can_view_media: T::Boolean).void }
              attr_writer :can_view_media

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_markdown_disabled

              sig { params(is_markdown_disabled: T::Boolean).void }
              attr_writer :is_markdown_disabled

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_media_ready

              sig { params(is_media_ready: T::Boolean).void }
              attr_writer :is_media_ready

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_opened

              sig { params(is_opened: T::Boolean).void }
              attr_writer :is_opened

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_published_with_period

              sig { params(is_published_with_period: T::Boolean).void }
              attr_writer :is_published_with_period

              sig { returns(T.nilable(String)) }
              attr_reader :posted_at

              sig { params(posted_at: String).void }
              attr_writer :posted_at

              sig { returns(T.nilable(String)) }
              attr_reader :posted_at_precise

              sig { params(posted_at_precise: String).void }
              attr_writer :posted_at_precise

              sig { returns(T.nilable(String)) }
              attr_reader :raw_text

              sig { params(raw_text: String).void }
              attr_writer :raw_text

              sig { returns(T.nilable(String)) }
              attr_reader :response_type

              sig { params(response_type: String).void }
              attr_writer :response_type

              sig { returns(T.nilable(String)) }
              attr_reader :text

              sig { params(text: String).void }
              attr_writer :text

              sig { returns(T.nilable(String)) }
              attr_reader :tips_amount

              sig { params(tips_amount: String).void }
              attr_writer :tips_amount

              sig do
                params(
                  id: Integer,
                  can_delete: T::Boolean,
                  can_edit: T::Boolean,
                  can_toggle_favorite: T::Boolean,
                  can_view_media: T::Boolean,
                  is_markdown_disabled: T::Boolean,
                  is_media_ready: T::Boolean,
                  is_opened: T::Boolean,
                  is_published_with_period: T::Boolean,
                  posted_at: String,
                  posted_at_precise: String,
                  raw_text: String,
                  response_type: String,
                  text: String,
                  tips_amount: String
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                can_delete: nil,
                can_edit: nil,
                can_toggle_favorite: nil,
                can_view_media: nil,
                is_markdown_disabled: nil,
                is_media_ready: nil,
                is_opened: nil,
                is_published_with_period: nil,
                posted_at: nil,
                posted_at_precise: nil,
                raw_text: nil,
                response_type: nil,
                text: nil,
                tips_amount: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    can_delete: T::Boolean,
                    can_edit: T::Boolean,
                    can_toggle_favorite: T::Boolean,
                    can_view_media: T::Boolean,
                    is_markdown_disabled: T::Boolean,
                    is_media_ready: T::Boolean,
                    is_opened: T::Boolean,
                    is_published_with_period: T::Boolean,
                    posted_at: String,
                    posted_at_precise: String,
                    raw_text: String,
                    response_type: String,
                    text: String,
                    tips_amount: String
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
