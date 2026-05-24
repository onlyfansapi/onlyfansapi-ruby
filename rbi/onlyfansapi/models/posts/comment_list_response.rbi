# typed: strong

module Onlyfansapi
  module Models
    module Posts
      class CommentListResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Posts::CommentListResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::Posts::CommentListResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta: Onlyfansapi::Models::Posts::CommentListResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::Posts::CommentListResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfansapi::Models::Posts::CommentListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Posts::CommentListResponse::Meta::OrHash,
            data: Onlyfansapi::Models::Posts::CommentListResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfansapi::Models::Posts::CommentListResponse::Meta,
              data: Onlyfansapi::Models::Posts::CommentListResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Posts::CommentListResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache,
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
                  Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits,
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
                  Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits,
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
                Onlyfansapi::Models::Posts::CommentListResponse::Data,
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
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List
                ]
              )
            )
          end
          attr_reader :list

          sig do
            params(
              list:
                T::Array[
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List::OrHash
                ]
            ).void
          end
          attr_writer :list

          sig { returns(T.nilable(Integer)) }
          attr_reader :next_offset

          sig { params(next_offset: Integer).void }
          attr_writer :next_offset

          sig do
            params(
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List::OrHash
                ],
              next_offset: Integer
            ).returns(T.attached_class)
          end
          def self.new(has_more: nil, list: nil, next_offset: nil)
          end

          sig do
            override.returns(
              {
                has_more: T::Boolean,
                list:
                  T::Array[
                    Onlyfansapi::Models::Posts::CommentListResponse::Data::List
                  ],
                next_offset: Integer
              }
            )
          end
          def to_hash
          end

          class List < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author
                )
              )
            end
            attr_reader :author

            sig do
              params(
                author:
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author::OrHash
              ).void
            end
            attr_writer :author

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_like

            sig { params(can_like: T::Boolean).void }
            attr_writer :can_like

            sig { returns(T.nilable(String)) }
            attr_reader :changed_at

            sig { params(changed_at: String).void }
            attr_writer :changed_at

            sig { returns(T.nilable(String)) }
            attr_reader :giphy_id

            sig { params(giphy_id: String).void }
            attr_writer :giphy_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_liked

            sig { params(is_liked: T::Boolean).void }
            attr_writer :is_liked

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_liked_by_author

            sig { params(is_liked_by_author: T::Boolean).void }
            attr_writer :is_liked_by_author

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_pinned

            sig { params(is_pinned: T::Boolean).void }
            attr_writer :is_pinned

            sig { returns(T.nilable(Integer)) }
            attr_reader :likes_count

            sig { params(likes_count: Integer).void }
            attr_writer :likes_count

            sig { returns(T.nilable(String)) }
            attr_reader :posted_at

            sig { params(posted_at: String).void }
            attr_writer :posted_at

            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig do
              params(
                id: Integer,
                author:
                  Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author::OrHash,
                can_like: T::Boolean,
                changed_at: String,
                giphy_id: String,
                is_liked: T::Boolean,
                is_liked_by_author: T::Boolean,
                is_pinned: T::Boolean,
                likes_count: Integer,
                posted_at: String,
                text: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              author: nil,
              can_like: nil,
              changed_at: nil,
              giphy_id: nil,
              is_liked: nil,
              is_liked_by_author: nil,
              is_pinned: nil,
              likes_count: nil,
              posted_at: nil,
              text: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  author:
                    Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author,
                  can_like: T::Boolean,
                  changed_at: String,
                  giphy_id: String,
                  is_liked: T::Boolean,
                  is_liked_by_author: T::Boolean,
                  is_pinned: T::Boolean,
                  likes_count: Integer,
                  posted_at: String,
                  text: String
                }
              )
            end
            def to_hash
            end

            class Author < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_reader :_view

              sig { params(_view: String).void }
              attr_writer :_view

              sig do
                params(id: Integer, _view: String).returns(T.attached_class)
              end
              def self.new(id: nil, _view: nil)
              end

              sig { override.returns({ id: Integer, _view: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
