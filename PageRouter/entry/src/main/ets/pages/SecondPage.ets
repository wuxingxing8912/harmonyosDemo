import router from '@ohos.router';

@Entry
@Component
struct SecondPage{


  build(){
    Row(){
      Column(){
        Text($r('app.string.title_second_page'))
        Blank().height(30)
        Button('Back')
          .width('75%')
          .onClick(()=>{
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}