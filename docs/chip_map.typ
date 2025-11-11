#tt.datasheet.renders(
  sponsor_text: "Decap sponsored by",
  sponsor_logo: tt.lib.get_image_by_id("logos", "texplained"),
  {
    tt.datasheet.add_render("GDS", image("/docs/images/full_gds.png"))
    tt.datasheet.add_render("Logic Density", image("/docs/images/logic_density.png", height: 93%), subtitle: "Local Interconnect Layer")
    tt.datasheet.add_render("Decap", image("/docs/images/decap.jpeg"))
  }
)