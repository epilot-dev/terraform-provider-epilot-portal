// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type Security struct {
	EitherAuth *string `security:"scheme,type=http,subtype=bearer,name=Authorization"`
	EpilotAuth *string `security:"scheme,type=http,subtype=bearer,name=Authorization"`
	PortalAuth *string `security:"scheme,type=http,subtype=bearer,name=Authorization"`
}

func (o *Security) GetEitherAuth() *string {
	if o == nil {
		return nil
	}
	return o.EitherAuth
}

func (o *Security) GetEpilotAuth() *string {
	if o == nil {
		return nil
	}
	return o.EpilotAuth
}

func (o *Security) GetPortalAuth() *string {
	if o == nil {
		return nil
	}
	return o.PortalAuth
}
