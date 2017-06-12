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

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 184
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 188
    .local v3, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x19

    .line 191
    .local v4, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return v9

    .line 194
    :pswitch_0
    const-string v5, "ontouch---"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ACTION_DOWN---X---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---Y--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v5, v11}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 202
    const-string v5, "ontouch---"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ACTION_UP---X---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---Y--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move v2, v4

    .line 204
    .local v2, "tempy":I
    move v1, v3

    .line 205
    .local v1, "tempx":I
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v0, v5

    .line 206
    .local v0, "swidth":F
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v6, v0, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 207
    const/4 v1, 0x0

    .line 208
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42340000    # 45.0f

    invoke-static {v6, v7}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 209
    invoke-static {v9}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$7(I)V

    .line 210
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY(I)I
    invoke-static {v5, v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$8(Lcom/game/sdk/floatwindow/FloatViewImpl;I)I

    move-result v2

    .line 211
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 220
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->animate(IIII)V
    invoke-static {v5, v3, v1, v4, v2}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$9(Lcom/game/sdk/floatwindow/FloatViewImpl;IIII)V

    goto/16 :goto_0

    .line 213
    :cond_2
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v6, v0, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 214
    float-to-int v5, v0

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    .line 215
    invoke-static {v11}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$7(I)V

    .line 216
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    float-to-int v6, v0

    iget-object v7, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43750000    # 245.0f

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 217
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY(I)I
    invoke-static {v5, v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$8(Lcom/game/sdk/floatwindow/FloatViewImpl;I)I

    move-result v2

    .line 218
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 225
    .end local v0    # "swidth":F
    .end local v1    # "tempx":I
    .end local v2    # "tempy":I
    :pswitch_2
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v5, v9}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$10(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    .line 226
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v5

    if-eqz v5, :cond_3

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 227
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 228
    :cond_3
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v5, v9}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    .line 230
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    const-string v6, "float_drag"

    # invokes: Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$11(Lcom/game/sdk/floatwindow/FloatViewImpl;Ljava/lang/String;)V

    .line 232
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 233
    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 234
    iget-object v5, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$2;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$12(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v6

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    const-string v5, "ontouch---"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ACTION_MOVE---X---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---Y--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
