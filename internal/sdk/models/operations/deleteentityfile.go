// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
)

// DeleteEntityFileResponseBody - The files are removed from the requested entity successfully.
type DeleteEntityFileResponseBody struct {
	DeletedFiles []string `json:"deletedFiles,omitempty"`
}

func (o *DeleteEntityFileResponseBody) GetDeletedFiles() []string {
	if o == nil {
		return nil
	}
	return o.DeletedFiles
}

type DeleteEntityFileResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// The request could not be validated
	ErrorResp *shared.ErrorResp
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// The files are removed from the requested entity successfully.
	Object *DeleteEntityFileResponseBody
}

func (o *DeleteEntityFileResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DeleteEntityFileResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *DeleteEntityFileResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DeleteEntityFileResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *DeleteEntityFileResponse) GetObject() *DeleteEntityFileResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
