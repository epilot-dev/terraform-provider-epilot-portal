// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
)

type GetEntityIdentifiersRequest struct {
	// The slug of an entity
	Slug shared.EntitySlug `pathParam:"style=simple,explode=false,name=slug"`
}

func (o *GetEntityIdentifiersRequest) GetSlug() shared.EntitySlug {
	if o == nil {
		return shared.EntitySlug("")
	}
	return o.Slug
}

type GetEntityIdentifiersData struct {
	// The name of the identifier
	Name *string `json:"name,omitempty"`
	// The type of the identifier
	Type *string `json:"type,omitempty"`
}

func (o *GetEntityIdentifiersData) GetName() *string {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *GetEntityIdentifiersData) GetType() *string {
	if o == nil {
		return nil
	}
	return o.Type
}

// GetEntityIdentifiersResponseBody - The identifiers of the requested entity returned successfully.
type GetEntityIdentifiersResponseBody struct {
	Data []GetEntityIdentifiersData `json:"data,omitempty"`
}

func (o *GetEntityIdentifiersResponseBody) GetData() []GetEntityIdentifiersData {
	if o == nil {
		return nil
	}
	return o.Data
}

type GetEntityIdentifiersResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// Could not authenticate the user
	ErrorResp *shared.ErrorResp
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// The identifiers of the requested entity returned successfully.
	Object *GetEntityIdentifiersResponseBody
}

func (o *GetEntityIdentifiersResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GetEntityIdentifiersResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *GetEntityIdentifiersResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GetEntityIdentifiersResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *GetEntityIdentifiersResponse) GetObject() *GetEntityIdentifiersResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
