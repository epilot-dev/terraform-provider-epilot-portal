// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
	"time"
)

type ProductSchema string

const (
	ProductSchemaProduct ProductSchema = "product"
)

func (e ProductSchema) ToPointer() *ProductSchema {
	return &e
}
func (e *ProductSchema) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "product":
		*e = ProductSchema(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ProductSchema: %v", v)
	}
}

// Product - The product entity
type Product struct {
	AdditionalProperties any `additionalProperties:"true" json:"-"`
	// Creation timestamp of the entity
	CreatedAt time.Time `json:"_created_at"`
	// Entity ID
	ID string `json:"_id"`
	// Organization ID the entity belongs to
	Org    string        `json:"_org"`
	Schema ProductSchema `json:"_schema"`
	// Array of entity tags
	Tags []string `json:"_tags,omitempty"`
	// Title of the entity
	Title string `json:"_title"`
	// Last update timestamp of the entity
	UpdatedAt time.Time `json:"_updated_at"`
}

func (p Product) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(p, "", false)
}

func (p *Product) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &p, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *Product) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

func (o *Product) GetCreatedAt() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.CreatedAt
}

func (o *Product) GetID() string {
	if o == nil {
		return ""
	}
	return o.ID
}

func (o *Product) GetOrg() string {
	if o == nil {
		return ""
	}
	return o.Org
}

func (o *Product) GetSchema() ProductSchema {
	if o == nil {
		return ProductSchema("")
	}
	return o.Schema
}

func (o *Product) GetTags() []string {
	if o == nil {
		return nil
	}
	return o.Tags
}

func (o *Product) GetTitle() string {
	if o == nil {
		return ""
	}
	return o.Title
}

func (o *Product) GetUpdatedAt() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.UpdatedAt
}
