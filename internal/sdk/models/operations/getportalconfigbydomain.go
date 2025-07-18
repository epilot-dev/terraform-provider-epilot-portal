// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
)

type GetPortalConfigByDomainRequest struct {
	Domain string `queryParam:"style=form,explode=true,name=domain"`
}

func (o *GetPortalConfigByDomainRequest) GetDomain() string {
	if o == nil {
		return ""
	}
	return o.Domain
}

type GetPortalConfigByDomainResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// Internal Server Error
	ErrorResp *shared.ErrorResp
	// Portal config retrieved successfully.
	PortalConfig *shared.PortalConfig
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *GetPortalConfigByDomainResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GetPortalConfigByDomainResponse) GetErrorResp() *shared.ErrorResp {
	if o == nil {
		return nil
	}
	return o.ErrorResp
}

func (o *GetPortalConfigByDomainResponse) GetPortalConfig() *shared.PortalConfig {
	if o == nil {
		return nil
	}
	return o.PortalConfig
}

func (o *GetPortalConfigByDomainResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GetPortalConfigByDomainResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
