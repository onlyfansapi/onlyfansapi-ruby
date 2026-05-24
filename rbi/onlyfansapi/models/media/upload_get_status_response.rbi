# typed: strong

module Onlyfansapi
  module Models
    module Media
      # Upload still processing
      module UploadGetStatusResponse
        extend Onlyfansapi::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember0,
              Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember1,
              Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2,
              Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3
            )
          end

        class UnionMember0 < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember0,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :prefixed_id

          sig { params(prefixed_id: String).void }
          attr_writer :prefixed_id

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Upload still processing
          sig do
            params(prefixed_id: String, status: String).returns(
              T.attached_class
            )
          end
          def self.new(prefixed_id: nil, status: nil)
          end

          sig { override.returns({ prefixed_id: String, status: String }) }
          def to_hash
          end
        end

        class UnionMember1 < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember1,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :error

          sig { params(error: String).void }
          attr_writer :error

          sig { returns(T.nilable(String)) }
          attr_reader :prefixed_id

          sig { params(prefixed_id: String).void }
          attr_writer :prefixed_id

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Upload failed
          sig do
            params(error: String, prefixed_id: String, status: String).returns(
              T.attached_class
            )
          end
          def self.new(error: nil, prefixed_id: nil, status: nil)
          end

          sig do
            override.returns(
              { error: String, prefixed_id: String, status: String }
            )
          end
          def to_hash
          end
        end

        class UnionMember2 < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :credits_used

          sig { params(credits_used: Integer).void }
          attr_writer :credits_used

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media
              )
            )
          end
          attr_reader :media

          sig do
            params(
              media:
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::OrHash
            ).void
          end
          attr_writer :media

          sig { returns(T.nilable(String)) }
          attr_reader :prefixed_id

          sig { params(prefixed_id: String).void }
          attr_writer :prefixed_id

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Completed POST /media/vault upload
          sig do
            params(
              credits_used: Integer,
              media:
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::OrHash,
              prefixed_id: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            credits_used: nil,
            media: nil,
            prefixed_id: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                credits_used: Integer,
                media:
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media,
                prefixed_id: String,
                status: String
              }
            )
          end
          def to_hash
          end

          class Media < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media,
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
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files
                )
              )
            end
            attr_reader :files

            sig do
              params(
                files:
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::OrHash
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

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :release_forms

            sig { params(release_forms: T::Array[T.anything]).void }
            attr_writer :release_forms

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: Integer,
                can_view: T::Boolean,
                converted_to_video: T::Boolean,
                created_at: String,
                duration: Integer,
                files:
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::OrHash,
                has_custom_preview: T::Boolean,
                has_error: T::Boolean,
                is_ready: T::Boolean,
                release_forms: T::Array[T.anything],
                type: String
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
              release_forms: nil,
              type: nil
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
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files,
                  has_custom_preview: T::Boolean,
                  has_error: T::Boolean,
                  is_ready: T::Boolean,
                  release_forms: T::Array[T.anything],
                  type: String
                }
              )
            end
            def to_hash
            end

            class Files < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full
                  )
                )
              end
              attr_reader :full

              sig do
                params(
                  full:
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full::OrHash
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
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full::OrHash,
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
                      Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full,
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
                      Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full,
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
                attr_accessor :url

                sig { returns(T.nilable(Integer)) }
                attr_reader :width

                sig { params(width: Integer).void }
                attr_writer :width

                sig do
                  params(
                    height: Integer,
                    size: Integer,
                    sources: T::Array[T.anything],
                    url: T.nilable(String),
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
                      url: T.nilable(String),
                      width: Integer
                    }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end

        class UnionMember3 < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :credits_used

          sig { params(credits_used: Integer).void }
          attr_writer :credits_used

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media
              )
            )
          end
          attr_reader :media

          sig do
            params(
              media:
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::OrHash
            ).void
          end
          attr_writer :media

          sig { returns(T.nilable(String)) }
          attr_reader :prefixed_id

          sig { params(prefixed_id: String).void }
          attr_writer :prefixed_id

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Completed POST /media/upload upload
          sig do
            params(
              credits_used: Integer,
              media:
                Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::OrHash,
              prefixed_id: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            credits_used: nil,
            media: nil,
            prefixed_id: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                credits_used: Integer,
                media:
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media,
                prefixed_id: String,
                status: String
              }
            )
          end
          def to_hash
          end

          class Media < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional
                )
              )
            end
            attr_reader :additional

            sig do
              params(
                additional:
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional::OrHash
              ).void
            end
            attr_writer :additional

            sig { returns(T.nilable(String)) }
            attr_reader :extra

            sig { params(extra: String).void }
            attr_writer :extra

            sig { returns(T.nilable(String)) }
            attr_reader :file_name

            sig { params(file_name: String).void }
            attr_writer :file_name

            sig { returns(T.nilable(String)) }
            attr_reader :host

            sig { params(host: String).void }
            attr_writer :host

            sig { returns(T.nilable(String)) }
            attr_reader :prefixed_id

            sig { params(prefixed_id: String).void }
            attr_writer :prefixed_id

            sig { returns(T.nilable(String)) }
            attr_reader :process_id

            sig { params(process_id: String).void }
            attr_writer :process_id

            sig { returns(T.nilable(String)) }
            attr_reader :source_url

            sig { params(source_url: String).void }
            attr_writer :source_url

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb
                  ]
                )
              )
            end
            attr_reader :thumbs

            sig do
              params(
                thumbs:
                  T::Array[
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb::OrHash
                  ]
              ).void
            end
            attr_writer :thumbs

            sig do
              params(
                additional:
                  Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional::OrHash,
                extra: String,
                file_name: String,
                host: String,
                prefixed_id: String,
                process_id: String,
                source_url: String,
                thumbs:
                  T::Array[
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              additional: nil,
              extra: nil,
              file_name: nil,
              host: nil,
              prefixed_id: nil,
              process_id: nil,
              source_url: nil,
              thumbs: nil
            )
            end

            sig do
              override.returns(
                {
                  additional:
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional,
                  extra: String,
                  file_name: String,
                  host: String,
                  prefixed_id: String,
                  process_id: String,
                  source_url: String,
                  thumbs:
                    T::Array[
                      Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb
                    ]
                }
              )
            end
            def to_hash
            end

            class Additional < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :user

              sig { params(user: String).void }
              attr_writer :user

              sig { params(user: String).returns(T.attached_class) }
              def self.new(user: nil)
              end

              sig { override.returns({ user: String }) }
              def to_hash
              end
            end

            class Thumb < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { params(id: Integer, url: String).returns(T.attached_class) }
              def self.new(id: nil, url: nil)
              end

              sig { override.returns({ id: Integer, url: String }) }
              def to_hash
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::Models::Media::UploadGetStatusResponse::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
