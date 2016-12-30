.class public Lcom/ipaynow/plugin/view/f;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bM:Landroid/graphics/Paint;

.field private bN:F

.field private bO:F

.field private bP:[I

.field private bQ:I

.field private bR:I

.field private bS:I

.field private bT:I

.field private bU:I

.field private bV:I

.field private bW:I

.field private bX:I

.field private bY:Z

.field private bZ:Z

.field private ca:Landroid/view/View;

.field private cb:Lcom/ipaynow/plugin/view/g;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/f;->bM:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ipaynow/plugin/view/f;->bP:[I

    const/16 v0, 0x14

    iput v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    iput v2, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    new-instance v0, Lcom/ipaynow/plugin/view/g;

    invoke-direct {v0, p0, v2}, Lcom/ipaynow/plugin/view/g;-><init>(Lcom/ipaynow/plugin/view/f;B)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/f;->cb:Lcom/ipaynow/plugin/view/g;

    iput-object p1, p0, Lcom/ipaynow/plugin/view/f;->k:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/view/f;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->bM:Landroid/graphics/Paint;

    sget v1, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/view/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->ca:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/view/View;II)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v0

    aget v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_0

    if-lt p2, v3, :cond_0

    if-gt p2, v5, :cond_0

    if-lt p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v4, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->ca:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ipaynow/plugin/view/f;->bZ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bS:I

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bW:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bU:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ipaynow/plugin/view/f;->bP:[I

    invoke-virtual {p0, v1}, Lcom/ipaynow/plugin/view/f;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/f;->ca:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v4

    iget-object v2, p0, Lcom/ipaynow/plugin/view/f;->bP:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    add-int v5, v1, v2

    aget v0, v0, v8

    iget-object v1, p0, Lcom/ipaynow/plugin/view/f;->bP:[I

    aget v1, v1, v8

    sub-int/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->ca:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->ca:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    sub-int v7, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bN:F

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bO:F

    iget v2, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ipaynow/plugin/view/f;->bM:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bV:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v2, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ipaynow/plugin/view/f;->postInvalidateDelayed(JIIII)V

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bU:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/ipaynow/plugin/view/f;->bY:Z

    if-nez v0, :cond_2

    iput-boolean v8, p0, Lcom/ipaynow/plugin/view/f;->bZ:Z

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v2, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ipaynow/plugin/view/f;->postInvalidateDelayed(JIIII)V

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/f;->ca:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bN:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bO:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bS:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bR:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bS:I

    iget v2, p0, Lcom/ipaynow/plugin/view/f;->bR:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bW:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bS:I

    iget v2, p0, Lcom/ipaynow/plugin/view/f;->bR:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bX:I

    iput v6, p0, Lcom/ipaynow/plugin/view/f;->bT:I

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bW:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/ipaynow/plugin/view/f;->bU:I

    iput-boolean v7, p0, Lcom/ipaynow/plugin/view/f;->bY:Z

    iput-boolean v7, p0, Lcom/ipaynow/plugin/view/f;->bZ:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v1, v6

    iget-object v1, p0, Lcom/ipaynow/plugin/view/f;->bP:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bN:F

    float-to-int v1, v1

    sub-int v0, v1, v0

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bS:I

    sub-int/2addr v1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/f;->bV:I

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/f;->postInvalidateDelayed(J)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2, v3}, Lcom/ipaynow/plugin/view/f;->a(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_2
    iput-boolean v6, p0, Lcom/ipaynow/plugin/view/f;->bY:Z

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/f;->postInvalidateDelayed(J)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->cb:Lcom/ipaynow/plugin/view/g;

    iput-object p1, v0, Lcom/ipaynow/plugin/view/g;->cc:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->cb:Lcom/ipaynow/plugin/view/g;

    iget v1, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ipaynow/plugin/view/f;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_3
    iput-boolean v6, p0, Lcom/ipaynow/plugin/view/f;->bY:Z

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/f;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/f;->bP:[I

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/f;->getLocationOnScreen([I)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    iget v0, p0, Lcom/ipaynow/plugin/view/f;->bQ:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/ipaynow/plugin/view/f;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    return-void
.end method
