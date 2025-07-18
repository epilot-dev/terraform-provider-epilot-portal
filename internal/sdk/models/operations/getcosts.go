// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"encoding/json"
	"fmt"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
	"time"
)

// QueryParamInterval - Interval between cost data points (e.g., PT15M for 15 minutes, PT1H for hourly). Not all intervals have to be supported.
type QueryParamInterval string

const (
	QueryParamIntervalPt15M QueryParamInterval = "PT15M"
	QueryParamIntervalPt1H  QueryParamInterval = "PT1H"
	QueryParamIntervalP1D   QueryParamInterval = "P1D"
	QueryParamIntervalP1M   QueryParamInterval = "P1M"
)

func (e QueryParamInterval) ToPointer() *QueryParamInterval {
	return &e
}
func (e *QueryParamInterval) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "PT15M":
		fallthrough
	case "PT1H":
		fallthrough
	case "P1D":
		fallthrough
	case "P1M":
		*e = QueryParamInterval(v)
		return nil
	default:
		return fmt.Errorf("invalid value for QueryParamInterval: %v", v)
	}
}

type GetCostsRequest struct {
	// Extension ID for cost data.
	ExtensionID string `queryParam:"style=form,explode=true,name=extensionId"`
	// Start date for cost data (ISO 8601 format).
	From time.Time `queryParam:"style=form,explode=true,name=from"`
	// Hook ID for cost data.
	HookID string `queryParam:"style=form,explode=true,name=hookId"`
	// Interval between cost data points (e.g., PT15M for 15 minutes, PT1H for hourly). Not all intervals have to be supported.
	Interval QueryParamInterval `queryParam:"style=form,explode=true,name=interval"`
	// Meter ID for cost data.
	MeterID string `queryParam:"style=form,explode=true,name=meter_id"`
	// End date for cost data (ISO 8601 format).
	To time.Time `queryParam:"style=form,explode=true,name=to"`
}

func (g GetCostsRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(g, "", false)
}

func (g *GetCostsRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &g, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *GetCostsRequest) GetExtensionID() string {
	if o == nil {
		return ""
	}
	return o.ExtensionID
}

func (o *GetCostsRequest) GetFrom() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.From
}

func (o *GetCostsRequest) GetHookID() string {
	if o == nil {
		return ""
	}
	return o.HookID
}

func (o *GetCostsRequest) GetInterval() QueryParamInterval {
	if o == nil {
		return QueryParamInterval("")
	}
	return o.Interval
}

func (o *GetCostsRequest) GetMeterID() string {
	if o == nil {
		return ""
	}
	return o.MeterID
}

func (o *GetCostsRequest) GetTo() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.To
}

// TaxBehavior - Is the tax (typically Value Added Tax) included in the amounts. Typically should NOT be included - exclusive of tax.
type TaxBehavior string

const (
	TaxBehaviorInclusive TaxBehavior = "inclusive"
	TaxBehaviorExclusive TaxBehavior = "exclusive"
)

func (e TaxBehavior) ToPointer() *TaxBehavior {
	return &e
}
func (e *TaxBehavior) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "inclusive":
		fallthrough
	case "exclusive":
		*e = TaxBehavior(v)
		return nil
	default:
		return fmt.Errorf("invalid value for TaxBehavior: %v", v)
	}
}

type Costs struct {
	// Is the tax (typically Value Added Tax) included in the amounts. Typically should NOT be included - exclusive of tax.
	TaxBehavior TaxBehavior `json:"tax_behavior"`
	// Tax rate in percent, e.g. 19 for 19%.
	TaxRate int64 `json:"tax_rate"`
	// ISO 8601 timestamp of the cost record.
	Timestamp time.Time `json:"timestamp"`
	// Cost in cents, e.g. 1234 for 12,34 €.
	UnitAmount int64 `json:"unit_amount"`
	// ISO 4217:2015 currency.
	UnitAmountCurrency string `json:"unit_amount_currency"`
	// Cost in decimal format, e.g. "12.34".
	UnitAmountDecimal string `json:"unit_amount_decimal"`
}

func (c Costs) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(c, "", false)
}

func (c *Costs) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &c, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *Costs) GetTaxBehavior() TaxBehavior {
	if o == nil {
		return TaxBehavior("")
	}
	return o.TaxBehavior
}

func (o *Costs) GetTaxRate() int64 {
	if o == nil {
		return 0
	}
	return o.TaxRate
}

func (o *Costs) GetTimestamp() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.Timestamp
}

func (o *Costs) GetUnitAmount() int64 {
	if o == nil {
		return 0
	}
	return o.UnitAmount
}

func (o *Costs) GetUnitAmountCurrency() string {
	if o == nil {
		return ""
	}
	return o.UnitAmountCurrency
}

func (o *Costs) GetUnitAmountDecimal() string {
	if o == nil {
		return ""
	}
	return o.UnitAmountDecimal
}

// GetCostsResponseBody - Cost data returned successfully.
type GetCostsResponseBody struct {
	Costs []Costs `json:"costs,omitempty"`
}

func (o *GetCostsResponseBody) GetCosts() []Costs {
	if o == nil {
		return nil
	}
	return o.Costs
}

type GetCostsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// Could not authenticate the user
	ErrorResp *shared.ErrorResp
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Cost data returned successfully.
	Object *GetCostsResponseBody
}

func (o *GetCostsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GetCostsResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *GetCostsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GetCostsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *GetCostsResponse) GetObject() *GetCostsResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
