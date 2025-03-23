import { SymbolGlyphModifier } from '@kit.ArkUI';
@Entry
@Preview
@Component
struct NavigationExample {
  @State TooTmp: ToolbarItem = {
    value: "func", symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_trash')), action: () => {
    }
  }
  @Provide('pageInfos') pageInfos: NavPathStack = new NavPathStack()
  build() {
    Column() {
      Navigation(this.pageInfos) {
        List({ space: 12 }){
          ListItem() {
            Text("ChatRoom")
              .width("100%")
              .height(72)
              .backgroundColor('#FFFFFF')
              .borderRadius(24)
              .fontSize(16)
              .fontWeight(500)
              .textAlign(TextAlign.Center)
              .onClick(() => {
                // TODO
              })
          }
        }.width('90%')
      }
      .title("Markdown Viewer")
      .mode(NavigationMode.Auto)
      .menus([
        {
          value: "setting",
          symbolIcon: new SymbolGlyphModifier($r('sys.symbol.gearshape')).symbolEffect(new AppearSymbolEffect(EffectScope.LAYER)),
          action: () => {
          }
        },
        {
          value: "trash", symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_trash')), action: () => {
        }
        },
        {
          value: "trash", symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_trash')), action: () => {
        }
        },
        {
          value: "trash", symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_trash')), action: () => {
        }
        },
        {
          value: "trash", symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_trash')), action: () => {
        }
        }
      ])
      .toolbarConfiguration([this.TooTmp, this.TooTmp, this.TooTmp])
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F1F3F5')
  }
}
