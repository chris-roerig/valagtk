public class {APPLICATION_NAME}.HeaderBar : Gtk.HeaderBar {
  public {APPLICATION_NAME}.Window window { get; construct; }

  public HeaderBar ({APPLICATION_NAME}.Window window) {
    Object (
      window: window
    );
  }

  construct {
    show_close_button = true;

    var button = new Gtk.Button.with_label ("Button 1");
    button.get_style_context ().add_class ("suggested-action");
    button.valign = Gtk.Align.CENTER;
    button.clicked.connect (button_clicked);

    pack_start (button);
  }

  public void button_clicked () {
    var dialog = new Gtk.Dialog.with_buttons (
      "Hello, World!",
      window,
      Gtk.DialogFlags.MODAL |
      Gtk.DialogFlags.DESTROY_WITH_PARENT |
      Gtk.DialogFlags.USE_HEADER_BAR 
    );

    var box = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);
    box = dialog.get_content_area ();
    box.pack_start(new Gtk.Label("Hello =)"), true, false, 0);

    dialog.show_all ();
    dialog.present ();
  }
}
