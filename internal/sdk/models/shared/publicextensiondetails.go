// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
)

type PublicExtensionDetailsName struct {
	AdditionalProperties map[string]string `additionalProperties:"true" json:"-"`
	// Name of the extension in English.
	En string `json:"en"`
}

func (p PublicExtensionDetailsName) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(p, "", false)
}

func (p *PublicExtensionDetailsName) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &p, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *PublicExtensionDetailsName) GetAdditionalProperties() map[string]string {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

func (o *PublicExtensionDetailsName) GetEn() string {
	if o == nil {
		return ""
	}
	return o.En
}

type PublicExtensionDetails struct {
	// Identifier of the extension.
	ID   *string                     `json:"id,omitempty"`
	Name *PublicExtensionDetailsName `json:"name,omitempty"`
}

func (o *PublicExtensionDetails) GetID() *string {
	if o == nil {
		return nil
	}
	return o.ID
}

func (o *PublicExtensionDetails) GetName() *PublicExtensionDetailsName {
	if o == nil {
		return nil
	}
	return o.Name
}
