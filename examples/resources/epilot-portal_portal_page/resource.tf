resource "epilot-portal_portal_page" "my_portalpage" {
  additional_properties = "{ \"see\": \"documentation\" }"
  blocks = {
    key = {
      additional_properties = "{ \"see\": \"documentation\" }"
      id                    = "c495fef9-eeca-4019-a989-8390dcd9825b"
      order                 = 1
      parent_id             = "c495fef9-eeca-4019-a989-8390dcd9825b"
      props = {
        additional_properties = "{ \"see\": \"documentation\" }"
        content = {
          # ...
        }
        design = {
          # ...
        }
        visibility = {
          # ...
        }
      }
      type = "tab"
    }
  }
  content = {
    key = jsonencode("value")
  }
  design = {
    key = jsonencode("value")
  }
  domain         = "customer-portal.epilot.io"
  is_deleted     = false
  is_entry_route = false
  is_public      = true
  is_system      = false
  order          = 1
  parent_id      = "c495fef9-eeca-4019-a989-8390dcd9825b"
  path           = "/dashboard"
  schema = [
    "contract"
  ]
  slug = "dashboard"
  visibility = {
    key = jsonencode("value")
  }
}