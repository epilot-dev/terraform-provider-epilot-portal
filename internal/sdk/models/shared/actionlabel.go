// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type ActionLabel struct {
	De *string `json:"de,omitempty"`
	En *string `json:"en,omitempty"`
}

func (o *ActionLabel) GetDe() *string {
	if o == nil {
		return nil
	}
	return o.De
}

func (o *ActionLabel) GetEn() *string {
	if o == nil {
		return nil
	}
	return o.En
}
