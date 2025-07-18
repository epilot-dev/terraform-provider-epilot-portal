// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type ContractIdentification struct {
	Extension *PublicExtensionDetails              `json:"extension,omitempty"`
	Hook      *PublicContractIdentificationDetails `json:"hook,omitempty"`
}

func (o *ContractIdentification) GetExtension() *PublicExtensionDetails {
	if o == nil {
		return nil
	}
	return o.Extension
}

func (o *ContractIdentification) GetHook() *PublicContractIdentificationDetails {
	if o == nil {
		return nil
	}
	return o.Hook
}

type PublicExtensionCapabilities struct {
	ConsumptionDataRetrieval []DataRetrievalItem     `json:"consumptionDataRetrieval,omitempty"`
	ContractIdentification   *ContractIdentification `json:"contractIdentification,omitempty"`
	CostDataRetrieval        []DataRetrievalItem     `json:"costDataRetrieval,omitempty"`
	PriceDataRetrieval       []DataRetrievalItem     `json:"priceDataRetrieval,omitempty"`
}

func (o *PublicExtensionCapabilities) GetConsumptionDataRetrieval() []DataRetrievalItem {
	if o == nil {
		return nil
	}
	return o.ConsumptionDataRetrieval
}

func (o *PublicExtensionCapabilities) GetContractIdentification() *ContractIdentification {
	if o == nil {
		return nil
	}
	return o.ContractIdentification
}

func (o *PublicExtensionCapabilities) GetCostDataRetrieval() []DataRetrievalItem {
	if o == nil {
		return nil
	}
	return o.CostDataRetrieval
}

func (o *PublicExtensionCapabilities) GetPriceDataRetrieval() []DataRetrievalItem {
	if o == nil {
		return nil
	}
	return o.PriceDataRetrieval
}
