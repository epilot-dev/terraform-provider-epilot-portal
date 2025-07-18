// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
)

type EntitySearchParams struct {
	// List of entity fields to include in search results
	Fields []string `json:"fields,omitempty"`
	From   *int64   `default:"0" json:"from"`
	// When true, enables entity hydration to resolve nested $relation & $relation_ref references in-place.
	Hydrate *bool `default:"false" json:"hydrate"`
	// Max search size is 1000 with higher values defaulting to 1000
	Size *int64 `default:"10" json:"size"`
	// URL-friendly identifier for the entity schema
	Slug EntitySlug `json:"slug"`
	Sort *string    `json:"sort,omitempty"`
}

func (e EntitySearchParams) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(e, "", false)
}

func (e *EntitySearchParams) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &e, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *EntitySearchParams) GetFields() []string {
	if o == nil {
		return nil
	}
	return o.Fields
}

func (o *EntitySearchParams) GetFrom() *int64 {
	if o == nil {
		return nil
	}
	return o.From
}

func (o *EntitySearchParams) GetHydrate() *bool {
	if o == nil {
		return nil
	}
	return o.Hydrate
}

func (o *EntitySearchParams) GetSize() *int64 {
	if o == nil {
		return nil
	}
	return o.Size
}

func (o *EntitySearchParams) GetSlug() EntitySlug {
	if o == nil {
		return EntitySlug("")
	}
	return o.Slug
}

func (o *EntitySearchParams) GetSort() *string {
	if o == nil {
		return nil
	}
	return o.Sort
}
