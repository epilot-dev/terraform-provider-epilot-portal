// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type ProviderPublicConfig struct {
	// Human-readable display name for identity provider shown in login
	DisplayName      string              `json:"display_name"`
	MobileOidcConfig *MoblieOIDCConfig   `json:"mobile_oidc_config,omitempty"`
	OidcConfig       *OIDCProviderConfig `json:"oidc_config,omitempty"`
	// URL-friendly slug to use as organization-unique identifier for Provider
	Slug string `json:"slug"`
}

func (o *ProviderPublicConfig) GetDisplayName() string {
	if o == nil {
		return ""
	}
	return o.DisplayName
}

func (o *ProviderPublicConfig) GetMobileOidcConfig() *MoblieOIDCConfig {
	if o == nil {
		return nil
	}
	return o.MobileOidcConfig
}

func (o *ProviderPublicConfig) GetOidcConfig() *OIDCProviderConfig {
	if o == nil {
		return nil
	}
	return o.OidcConfig
}

func (o *ProviderPublicConfig) GetSlug() string {
	if o == nil {
		return ""
	}
	return o.Slug
}
