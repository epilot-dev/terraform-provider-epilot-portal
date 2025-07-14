resource "epilot-portal_portal_widget" "my_portalwidget" {
  origin = "END_CUSTOMER_PORTAL"
  schemas = {
    actions = [
      {
        id = "...my_id..."
        label = {
          de = "...my_de..."
          en = "...my_en..."
        }
        rules = [
          {
            attribute       = "...my_attribute..."
            attribute_value = "...my_attribute_value..."
            entity          = "...my_entity..."
          }
        ]
        type = "journey"
        url  = "...my_url..."
      }
    ]
    button = {
      label = {
        de = "...my_de..."
        en = "...my_en..."
      }
      url = "...my_url..."
    }
    campaign_id = "...my_campaign_id..."
    content     = "...my_content..."
    headline = {
      de = "...my_de..."
      en = "...my_en..."
    }
    id         = "...my_id..."
    image_url  = "...my_image_url..."
    list_index = 1
    schema     = "...my_schema..."
    sub_headline = {
      de = "...my_de..."
      en = "...my_en..."
    }
    type = "ENTITY_WIDGET"
  }
}