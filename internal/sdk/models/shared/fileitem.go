// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
	"time"
)

type Relations struct {
	// URL-friendly identifier for the entity schema
	Schema *EntitySlug `json:"_schema,omitempty"`
	// The title of the parent entity
	Title *string `json:"_title,omitempty"`
	// Entity ID
	EntityID *string `json:"entity_id,omitempty"`
}

func (o *Relations) GetSchema() *EntitySlug {
	if o == nil {
		return nil
	}
	return o.Schema
}

func (o *Relations) GetTitle() *string {
	if o == nil {
		return nil
	}
	return o.Title
}

func (o *Relations) GetEntityID() *string {
	if o == nil {
		return nil
	}
	return o.EntityID
}

type FileItemSchema string

const (
	FileItemSchemaFile FileItemSchema = "file"
)

func (e FileItemSchema) ToPointer() *FileItemSchema {
	return &e
}
func (e *FileItemSchema) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "file":
		*e = FileItemSchema(v)
		return nil
	default:
		return fmt.Errorf("invalid value for FileItemSchema: %v", v)
	}
}

type AccessControl string

const (
	AccessControlPrivate    AccessControl = "private"
	AccessControlPublicRead AccessControl = "public-read"
)

func (e AccessControl) ToPointer() *AccessControl {
	return &e
}
func (e *AccessControl) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "private":
		fallthrough
	case "public-read":
		*e = AccessControl(v)
		return nil
	default:
		return fmt.Errorf("invalid value for AccessControl: %v", v)
	}
}

// FileItemType - Human readable type for file
type FileItemType string

const (
	FileItemTypeDocument         FileItemType = "document"
	FileItemTypeDocumentTemplate FileItemType = "document_template"
	FileItemTypeText             FileItemType = "text"
	FileItemTypeImage            FileItemType = "image"
	FileItemTypeVideo            FileItemType = "video"
	FileItemTypeAudio            FileItemType = "audio"
	FileItemTypeSpreadsheet      FileItemType = "spreadsheet"
	FileItemTypePresentation     FileItemType = "presentation"
	FileItemTypeFont             FileItemType = "font"
	FileItemTypeArchive          FileItemType = "archive"
	FileItemTypeApplication      FileItemType = "application"
	FileItemTypeUnknown          FileItemType = "unknown"
)

func (e FileItemType) ToPointer() *FileItemType {
	return &e
}
func (e *FileItemType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "document":
		fallthrough
	case "document_template":
		fallthrough
	case "text":
		fallthrough
	case "image":
		fallthrough
	case "video":
		fallthrough
	case "audio":
		fallthrough
	case "spreadsheet":
		fallthrough
	case "presentation":
		fallthrough
	case "font":
		fallthrough
	case "archive":
		fallthrough
	case "application":
		fallthrough
	case "unknown":
		*e = FileItemType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for FileItemType: %v", v)
	}
}

// FileItem - The file entity
type FileItem struct {
	AdditionalProperties any `additionalProperties:"true" json:"-"`
	// Creation timestamp of the entity
	CreatedAt time.Time `json:"_created_at"`
	// Entity ID
	ID string `json:"_id"`
	// Organization ID the entity belongs to
	Org       string         `json:"_org"`
	Relations []Relations    `json:"_relations,omitempty"`
	Schema    FileItemSchema `json:"_schema"`
	// Array of entity tags
	Tags []string `json:"_tags,omitempty"`
	// Title of the entity
	Title string `json:"_title"`
	// Last update timestamp of the entity
	UpdatedAt     time.Time      `json:"_updated_at"`
	AccessControl *AccessControl `default:"private" json:"access_control"`
	// The date used for sorting the file
	FileDate *time.Time `json:"file_date,omitempty"`
	Filename *string    `json:"filename,omitempty"`
	// Indicate whether the user has not seen/downloaded the file before
	IsNew *bool `json:"is_new,omitempty"`
	// MIME type of the file
	MimeType *string `json:"mime_type,omitempty"`
	// Direct URL for file (public only if file access control is public-read)
	PublicURL *string `json:"public_url,omitempty"`
	// Human readable type for file
	Type *FileItemType `json:"type,omitempty"`
}

func (f FileItem) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(f, "", false)
}

func (f *FileItem) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &f, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *FileItem) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

func (o *FileItem) GetCreatedAt() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.CreatedAt
}

func (o *FileItem) GetID() string {
	if o == nil {
		return ""
	}
	return o.ID
}

func (o *FileItem) GetOrg() string {
	if o == nil {
		return ""
	}
	return o.Org
}

func (o *FileItem) GetRelations() []Relations {
	if o == nil {
		return nil
	}
	return o.Relations
}

func (o *FileItem) GetSchema() FileItemSchema {
	if o == nil {
		return FileItemSchema("")
	}
	return o.Schema
}

func (o *FileItem) GetTags() []string {
	if o == nil {
		return nil
	}
	return o.Tags
}

func (o *FileItem) GetTitle() string {
	if o == nil {
		return ""
	}
	return o.Title
}

func (o *FileItem) GetUpdatedAt() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.UpdatedAt
}

func (o *FileItem) GetAccessControl() *AccessControl {
	if o == nil {
		return nil
	}
	return o.AccessControl
}

func (o *FileItem) GetFileDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.FileDate
}

func (o *FileItem) GetFilename() *string {
	if o == nil {
		return nil
	}
	return o.Filename
}

func (o *FileItem) GetIsNew() *bool {
	if o == nil {
		return nil
	}
	return o.IsNew
}

func (o *FileItem) GetMimeType() *string {
	if o == nil {
		return nil
	}
	return o.MimeType
}

func (o *FileItem) GetPublicURL() *string {
	if o == nil {
		return nil
	}
	return o.PublicURL
}

func (o *FileItem) GetType() *FileItemType {
	if o == nil {
		return nil
	}
	return o.Type
}
