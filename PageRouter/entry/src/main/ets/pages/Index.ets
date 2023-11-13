import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Index Page'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          Blank().height(30)
          Button($r('app.string.next'))
          .width('75%')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/SecondPage',
              params:{
                src:'from index'
              }
            },router.RouterMode.Single)
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}