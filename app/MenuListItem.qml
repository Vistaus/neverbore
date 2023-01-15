import QtQuick 2.4
import Ubuntu.Components 1.3

ListItem {
  default property alias content: layout.data
  property alias title: layout.title
  property bool progression
  property bool active: true
  property alias iconName: lastIcon.name

  onClicked: Haptics.play()

  color: Theme.palette.normal.background

  ListItemLayout {
    id: layout
    title.opacity: active ? 1 : 0.5

    Icon {
      id: lastIcon
      name: "next"
      visible: progression
      opacity: active ? 1 : 0.5
      height: units.gu(2)
      width: height
      SlotsLayout.position: SlotsLayout.Last
    }
  }
}
