// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"encoding/json"
	"fmt"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
)

type ConfirmUserRequest struct {
	ConfirmationLinkToken string `queryParam:"style=form,explode=true,name=confirmation_link_token"`
	UseRedirect           *bool  `default:"true" queryParam:"style=form,explode=true,name=use_redirect"`
}

func (c ConfirmUserRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(c, "", false)
}

func (c *ConfirmUserRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &c, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *ConfirmUserRequest) GetConfirmationLinkToken() string {
	if o == nil {
		return ""
	}
	return o.ConfirmationLinkToken
}

func (o *ConfirmUserRequest) GetUseRedirect() *bool {
	if o == nil {
		return nil
	}
	return o.UseRedirect
}

type ConfirmUserReason string

const (
	ConfirmUserReasonInvalidToken ConfirmUserReason = "invalid_token"
)

func (e ConfirmUserReason) ToPointer() *ConfirmUserReason {
	return &e
}
func (e *ConfirmUserReason) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "invalid_token":
		*e = ConfirmUserReason(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ConfirmUserReason: %v", v)
	}
}

// ConfirmUserPublicResponseBody - The request could not be validated
type ConfirmUserPublicResponseBody struct {
	// Error message
	Message *string           `json:"message,omitempty"`
	Reason  ConfirmUserReason `json:"reason"`
}

func (o *ConfirmUserPublicResponseBody) GetMessage() *string {
	if o == nil {
		return nil
	}
	return o.Message
}

func (o *ConfirmUserPublicResponseBody) GetReason() ConfirmUserReason {
	if o == nil {
		return ConfirmUserReason("")
	}
	return o.Reason
}

// ConfirmUserResponseBody - Returned in case of successful user confirmation
type ConfirmUserResponseBody struct {
	// Is the user confirmed
	Confirmed *bool `json:"confirmed,omitempty"`
	// Is the user previously confirmed
	UserAlreadyConfirmed *bool `json:"user_already_confirmed,omitempty"`
}

func (o *ConfirmUserResponseBody) GetConfirmed() *bool {
	if o == nil {
		return nil
	}
	return o.Confirmed
}

func (o *ConfirmUserResponseBody) GetUserAlreadyConfirmed() *bool {
	if o == nil {
		return nil
	}
	return o.UserAlreadyConfirmed
}

type ConfirmUserResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// Internal Server Error
	ErrorResp *shared.ErrorResp
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Returned in case of successful user confirmation
	Object *ConfirmUserResponseBody
	// The request could not be validated
	Object1 *ConfirmUserPublicResponseBody
}

func (o *ConfirmUserResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ConfirmUserResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *ConfirmUserResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ConfirmUserResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ConfirmUserResponse) GetObject() *ConfirmUserResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}

func (o *ConfirmUserResponse) GetObject1() *ConfirmUserPublicResponseBody {
	if o == nil {
		return nil
	}
	return o.Object1
}
