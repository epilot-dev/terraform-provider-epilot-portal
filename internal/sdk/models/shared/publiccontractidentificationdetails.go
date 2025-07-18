// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
)

// PublicContractIdentificationDetailsExplanation - Explanation of the hook.
type PublicContractIdentificationDetailsExplanation struct {
	AdditionalProperties map[string]string `additionalProperties:"true" json:"-"`
	// Explanation of the functionality shown to the end user.
	En string `json:"en"`
}

func (p PublicContractIdentificationDetailsExplanation) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(p, "", false)
}

func (p *PublicContractIdentificationDetailsExplanation) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &p, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *PublicContractIdentificationDetailsExplanation) GetAdditionalProperties() map[string]string {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

func (o *PublicContractIdentificationDetailsExplanation) GetEn() string {
	if o == nil {
		return ""
	}
	return o.En
}

type PublicContractIdentificationDetails struct {
	// Explanation of the hook.
	Explanation *PublicContractIdentificationDetailsExplanation `json:"explanation,omitempty"`
}

func (o *PublicContractIdentificationDetails) GetExplanation() *PublicContractIdentificationDetailsExplanation {
	if o == nil {
		return nil
	}
	return o.Explanation
}
