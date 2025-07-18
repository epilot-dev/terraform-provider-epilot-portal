// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type S3ref struct {
	// S3 bucket name
	Bucket string `json:"bucket"`
	// S3 key
	Key string `json:"key"`
}

func (o *S3ref) GetBucket() string {
	if o == nil {
		return ""
	}
	return o.Bucket
}

func (o *S3ref) GetKey() string {
	if o == nil {
		return ""
	}
	return o.Key
}

type MeterReadingPhotoData struct {
	Filename string `json:"filename"`
	// Recognized meter number. Deprecated: Use `meter_numbers` instead as we can recognize several potential meter numbers.
	//
	// Deprecated: This will be removed in a future release, please migrate away from it as soon as possible.
	MeterNumber *string `json:"meter_number,omitempty"`
	// Recognized list of (potential) meter numbers.
	MeterNumbers []string `json:"meter_numbers,omitempty"`
	// Recognized meter reading.
	Reading *string `json:"reading,omitempty"`
	S3ref   S3ref   `json:"s3ref"`
	// Recognized sector of the meter.
	Sector *string `json:"sector,omitempty"`
}

func (o *MeterReadingPhotoData) GetFilename() string {
	if o == nil {
		return ""
	}
	return o.Filename
}

func (o *MeterReadingPhotoData) GetMeterNumber() *string {
	if o == nil {
		return nil
	}
	return o.MeterNumber
}

func (o *MeterReadingPhotoData) GetMeterNumbers() []string {
	if o == nil {
		return nil
	}
	return o.MeterNumbers
}

func (o *MeterReadingPhotoData) GetReading() *string {
	if o == nil {
		return nil
	}
	return o.Reading
}

func (o *MeterReadingPhotoData) GetS3ref() S3ref {
	if o == nil {
		return S3ref{}
	}
	return o.S3ref
}

func (o *MeterReadingPhotoData) GetSector() *string {
	if o == nil {
		return nil
	}
	return o.Sector
}
