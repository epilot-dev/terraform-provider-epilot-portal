// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"encoding/json"
	"fmt"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
)

// Type - One of supported activity types
type Type string

const (
	TypePortalUserResetPassword Type = "PortalUserResetPassword"
)

func (e Type) ToPointer() *Type {
	return &e
}
func (e *Type) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "PortalUserResetPassword":
		*e = Type(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Type: %v", v)
	}
}

type CreateCustomEntityActivityRequestBody struct {
	// One of supported activity types
	Type Type `json:"type"`
}

func (o *CreateCustomEntityActivityRequestBody) GetType() Type {
	if o == nil {
		return Type("")
	}
	return o.Type
}

type CreateCustomEntityActivityRequest struct {
	RequestBody *CreateCustomEntityActivityRequestBody `request:"mediaType=application/json"`
	// Comma-separated list of entities which the activity primarily concerns. Deprecated - ignored as the list of entities is automatically determined now.
	//
	// Deprecated: This will be removed in a future release, please migrate away from it as soon as possible.
	Entities []string `queryParam:"style=form,explode=false,name=entities"`
}

func (o *CreateCustomEntityActivityRequest) GetRequestBody() *CreateCustomEntityActivityRequestBody {
	if o == nil {
		return nil
	}
	return o.RequestBody
}

func (o *CreateCustomEntityActivityRequest) GetEntities() []string {
	if o == nil {
		return nil
	}
	return o.Entities
}

type CreateCustomEntityActivityResponse struct {
	// Success
	ActivityItem *shared.ActivityItem
	// HTTP response content type for this operation
	ContentType string
	// Could not authenticate the user
	ErrorResp *shared.ErrorResp
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *CreateCustomEntityActivityResponse) GetActivityItem() *shared.ActivityItem {
	if o == nil {
		return nil
	}
	return o.ActivityItem
}

func (o *CreateCustomEntityActivityResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *CreateCustomEntityActivityResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *CreateCustomEntityActivityResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *CreateCustomEntityActivityResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
