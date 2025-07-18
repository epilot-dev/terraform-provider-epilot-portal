// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
)

type CheckContactExistsRequest struct {
	// Request payload
	ContactExistsRequest shared.ContactExistsRequest `request:"mediaType=application/json"`
	// Origin of the portal
	Origin shared.Origin `queryParam:"style=form,explode=true,name=origin"`
}

func (o *CheckContactExistsRequest) GetContactExistsRequest() shared.ContactExistsRequest {
	if o == nil {
		return shared.ContactExistsRequest{}
	}
	return o.ContactExistsRequest
}

func (o *CheckContactExistsRequest) GetOrigin() shared.Origin {
	if o == nil {
		return shared.Origin("")
	}
	return o.Origin
}

// CheckContactExistsResponseBody - Return result true|false if the contact with given identifiers exists.
type CheckContactExistsResponseBody struct {
	// Entity ID
	ContactID *string `json:"contactId,omitempty"`
	// Whether the contact exists with the given identifier values
	Exists *bool `json:"exists,omitempty"`
}

func (o *CheckContactExistsResponseBody) GetContactID() *string {
	if o == nil {
		return nil
	}
	return o.ContactID
}

func (o *CheckContactExistsResponseBody) GetExists() *bool {
	if o == nil {
		return nil
	}
	return o.Exists
}

type CheckContactExistsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// The request could not be validated
	ErrorResp *shared.ErrorResp
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Return result true|false if the contact with given identifiers exists.
	Object *CheckContactExistsResponseBody
}

func (o *CheckContactExistsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *CheckContactExistsResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *CheckContactExistsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *CheckContactExistsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *CheckContactExistsResponse) GetObject() *CheckContactExistsResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
