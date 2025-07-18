// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
)

type Cache struct {
	// Key to use to identify the auth response. Supports interpolation.
	Key string `json:"key"`
	// Time to live in seconds for the cache. Supports interpolation.
	TTL string `json:"ttl"`
}

func (o *Cache) GetKey() string {
	if o == nil {
		return ""
	}
	return o.Key
}

func (o *Cache) GetTTL() string {
	if o == nil {
		return ""
	}
	return o.TTL
}

type ExtensionAuthBlock struct {
	// JSON body to use for authentication. Supports variable interpolation.
	Body  map[string]string `json:"body,omitempty"`
	Cache *Cache            `json:"cache,omitempty"`
	// Headers to use for authentication. Supports variable interpolation.
	Headers map[string]string `json:"headers,omitempty"`
	// HTTP method to use for authentication
	Method *string `default:"GET" json:"method"`
	// Parameters to append to the URL. Supports variable interpolation.
	Params map[string]string `json:"params,omitempty"`
	// URL to use for authentication. Supports variable interpolation.
	URL string `json:"url"`
}

func (e ExtensionAuthBlock) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(e, "", false)
}

func (e *ExtensionAuthBlock) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &e, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *ExtensionAuthBlock) GetBody() map[string]string {
	if o == nil {
		return nil
	}
	return o.Body
}

func (o *ExtensionAuthBlock) GetCache() *Cache {
	if o == nil {
		return nil
	}
	return o.Cache
}

func (o *ExtensionAuthBlock) GetHeaders() map[string]string {
	if o == nil {
		return nil
	}
	return o.Headers
}

func (o *ExtensionAuthBlock) GetMethod() *string {
	if o == nil {
		return nil
	}
	return o.Method
}

func (o *ExtensionAuthBlock) GetParams() map[string]string {
	if o == nil {
		return nil
	}
	return o.Params
}

func (o *ExtensionAuthBlock) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}
