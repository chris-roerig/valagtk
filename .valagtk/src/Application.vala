public class Application : Gtk.Application {
  public Application () {
    Object (
      application_id: "{APPLICATION_ID}",
      flags: ApplicationFlags.FLAGS_NONE
    );
  }

  protected override void activate () {
    build_window ();
  }

  private void build_window () {
    add_window(new {APPLICATION_NAME}.Window (this));
  }
}
