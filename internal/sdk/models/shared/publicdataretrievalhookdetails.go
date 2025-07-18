// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
)

type PublicDataRetrievalHookDetailsName struct {
	AdditionalProperties map[string]string `additionalProperties:"true" json:"-"`
	// Name of the extension in English.
	En string `json:"en"`
}

func (p PublicDataRetrievalHookDetailsName) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(p, "", false)
}

func (p *PublicDataRetrievalHookDetailsName) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &p, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *PublicDataRetrievalHookDetailsName) GetAdditionalProperties() map[string]string {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

func (o *PublicDataRetrievalHookDetailsName) GetEn() string {
	if o == nil {
		return ""
	}
	return o.En
}

type PublicDataRetrievalHookDetails struct {
	// Identifier of the hook.
	ID *string `json:"id,omitempty"`
	// The intervals associated with the hook.
	Intervals []string                            `json:"intervals,omitempty"`
	Name      *PublicDataRetrievalHookDetailsName `json:"name,omitempty"`
}

func (o *PublicDataRetrievalHookDetails) GetID() *string {
	if o == nil {
		return nil
	}
	return o.ID
}

func (o *PublicDataRetrievalHookDetails) GetIntervals() []string {
	if o == nil {
		return nil
	}
	return o.Intervals
}

func (o *PublicDataRetrievalHookDetails) GetName() *PublicDataRetrievalHookDetailsName {
	if o == nil {
		return nil
	}
	return o.Name
}
