// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SavePortalFileS3ref struct {
	// S3 bucket name
	Bucket string `json:"bucket"`
	// S3 key
	Key string `json:"key"`
}

func (o *SavePortalFileS3ref) GetBucket() string {
	if o == nil {
		return ""
	}
	return o.Bucket
}

func (o *SavePortalFileS3ref) GetKey() string {
	if o == nil {
		return ""
	}
	return o.Key
}

type SavePortalFileFiles struct {
	// Array of file tags
	Tags []string `json:"_tags,omitempty"`
	// File type
	FileType string `json:"file_type"`
	// File name
	Filename *string              `json:"filename,omitempty"`
	S3ref    *SavePortalFileS3ref `json:"s3ref,omitempty"`
}

func (o *SavePortalFileFiles) GetTags() []string {
	if o == nil {
		return nil
	}
	return o.Tags
}

func (o *SavePortalFileFiles) GetFileType() string {
	if o == nil {
		return ""
	}
	return o.FileType
}

func (o *SavePortalFileFiles) GetFilename() *string {
	if o == nil {
		return nil
	}
	return o.Filename
}

func (o *SavePortalFileFiles) GetS3ref() *SavePortalFileS3ref {
	if o == nil {
		return nil
	}
	return o.S3ref
}

type SavePortalFile struct {
	Files []SavePortalFileFiles `json:"files"`
	// Origin of the portal
	Origin Origin `json:"origin"`
}

func (o *SavePortalFile) GetFiles() []SavePortalFileFiles {
	if o == nil {
		return []SavePortalFileFiles{}
	}
	return o.Files
}

func (o *SavePortalFile) GetOrigin() Origin {
	if o == nil {
		return Origin("")
	}
	return o.Origin
}
