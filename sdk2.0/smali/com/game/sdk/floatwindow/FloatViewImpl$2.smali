.class Lcom/game/sdk/floatwindow/FloatViewImpl$2;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/floatwindow/FloatViewImpl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 139
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 143
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x19

    .line 146
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return v7

    .line 149
    :pswitch_0
    const-string v3, "ontouch---"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ACTION_DOWN---X---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---Y--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v3, v9}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    const-string v3, "ontouch---"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ACTION_UP---X---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---Y--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 161
    .local v0, "swidth":F
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v4, v0, v6

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 162
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    invoke-static {v7}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$7(I)V

    .line 167
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY()Z
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$8(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    .line 168
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 178
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$9(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v4

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$10(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v4, v0, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 170
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    float-to-int v4, v0

    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 171
    invoke-static {v9}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$7(I)V

    .line 172
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    float-to-int v4, v0

    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43750000    # 245.0f

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 173
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY()Z
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$8(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    .line 174
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 186
    .end local v0    # "swidth":F
    :pswitch_2
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 187
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 188
    :cond_3
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v3, v7}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    .line 189
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    const-string v4, "float_drag"

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$11(Lcom/game/sdk/floatwindow/FloatViewImpl;Ljava/lang/String;)V

    .line 191
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 192
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 193
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$9(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v4

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    const-string v3, "ontouch---"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ACTION_MOVE---X---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---Y--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
