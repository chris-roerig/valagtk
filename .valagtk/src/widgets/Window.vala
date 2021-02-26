public class {APPLICATION_NAME}.Window : Gtk.ApplicationWindow {
  public GLib.Settings settings;
  public Gtk.Stack stack;

  public Window (Gtk.Application app) {
    Object (
      application: app
    );
  }

  construct {
    window_position = Gtk.WindowPosition.CENTER;
    set_default_size(500, 900);

    settings = new GLib.Settings ("{APPLICATION_ID}");
    move (settings.get_int("pos-x"), settings.get_int("pos-y"));
    resize (settings.get_int("window-width"), settings.get_int("window-height"));

    delete_event.connect (e => {
      return before_destroy ();
    });

    stack = new Gtk.Stack ();
    stack.expand = true;

    var grid = new Gtk.Grid ();
    grid.add(new Gtk.Label ("Put food in me."));

    stack.add_titled(grid, "grid", "Grid 1");
    
    add (stack);

    var headerbar = new {APPLICATION_NAME}.HeaderBar (this);
    set_titlebar (headerbar);

    show_all();
  }

  public bool before_destroy () {
    int width, height, x, y;

    get_size (out width, out height);
    get_position (out x, out y);

    settings.set_int ("pos-x", x);
    settings.set_int ("pos-y", y);
    settings.set_int ("window-height", height);
    settings.set_int ("window-width", width);

    return false;
  }
}
