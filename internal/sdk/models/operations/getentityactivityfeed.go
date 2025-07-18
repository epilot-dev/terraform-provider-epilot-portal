// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/internal/utils"
	"github.com/epilot-dev/terraform-provider-epilot-portal/internal/sdk/models/shared"
	"net/http"
	"time"
)

type GetEntityActivityFeedRequest struct {
	// Get activities after this timestamp
	After *time.Time `queryParam:"style=form,explode=true,name=after"`
	// get activities before this timestamp
	Before *time.Time `queryParam:"style=form,explode=true,name=before"`
	// start from page
	From *int64 `default:"0" queryParam:"style=form,explode=true,name=from"`
	// Entity id
	ID string `pathParam:"style=simple,explode=false,name=id"`
	// Include activities from related entities
	IncludeRelations *bool `default:"false" queryParam:"style=form,explode=true,name=include_relations"`
	// max number of results to return
	Size *int64 `default:"25" queryParam:"style=form,explode=true,name=size"`
	// Entity Type
	Slug shared.EntitySlug `pathParam:"style=simple,explode=false,name=slug"`
	// Filter by activity type
	Type *string `queryParam:"style=form,explode=true,name=type"`
}

func (g GetEntityActivityFeedRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(g, "", false)
}

func (g *GetEntityActivityFeedRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &g, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *GetEntityActivityFeedRequest) GetAfter() *time.Time {
	if o == nil {
		return nil
	}
	return o.After
}

func (o *GetEntityActivityFeedRequest) GetBefore() *time.Time {
	if o == nil {
		return nil
	}
	return o.Before
}

func (o *GetEntityActivityFeedRequest) GetFrom() *int64 {
	if o == nil {
		return nil
	}
	return o.From
}

func (o *GetEntityActivityFeedRequest) GetID() string {
	if o == nil {
		return ""
	}
	return o.ID
}

func (o *GetEntityActivityFeedRequest) GetIncludeRelations() *bool {
	if o == nil {
		return nil
	}
	return o.IncludeRelations
}

func (o *GetEntityActivityFeedRequest) GetSize() *int64 {
	if o == nil {
		return nil
	}
	return o.Size
}

func (o *GetEntityActivityFeedRequest) GetSlug() shared.EntitySlug {
	if o == nil {
		return shared.EntitySlug("")
	}
	return o.Slug
}

func (o *GetEntityActivityFeedRequest) GetType() *string {
	if o == nil {
		return nil
	}
	return o.Type
}

// GetEntityActivityFeedResponseBody - Success
type GetEntityActivityFeedResponseBody struct {
	Results []shared.ActivityItem `json:"results,omitempty"`
	Total   *int64                `json:"total,omitempty"`
}

func (o *GetEntityActivityFeedResponseBody) GetResults() []shared.ActivityItem {
	if o == nil {
		return nil
	}
	return o.Results
}

func (o *GetEntityActivityFeedResponseBody) GetTotal() *int64 {
	if o == nil {
		return nil
	}
	return o.Total
}

type GetEntityActivityFeedResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Success
	Object *GetEntityActivityFeedResponseBody
}

func (o *GetEntityActivityFeedResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GetEntityActivityFeedResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GetEntityActivityFeedResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *GetEntityActivityFeedResponse) GetObject() *GetEntityActivityFeedResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
