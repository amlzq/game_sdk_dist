.class public Lcom/game/sdk/view/LVEatBeans;
.super Landroid/view/View;
.source "LVEatBeans.java"


# instance fields
.field private beansWidth:F

.field private eatErEndAngle:F

.field private eatErPositonX:F

.field private eatErStrtAngle:F

.field private eatErWidth:F

.field eatSpeed:I

.field private mAngle:F

.field private mHigh:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintEye:Landroid/graphics/Paint;

.field private mWidth:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/game/sdk/view/LVEatBeans;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/game/sdk/view/LVEatBeans;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v1, p0, Lcom/game/sdk/view/LVEatBeans;->mWidth:F

    .line 26
    iput v1, p0, Lcom/game/sdk/view/LVEatBeans;->mHigh:F

    .line 27
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    .line 29
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    .line 30
    iput v1, p0, Lcom/game/sdk/view/LVEatBeans;->eatErPositonX:F

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatSpeed:I

    .line 32
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->beansWidth:F

    .line 34
    const/high16 v0, 0x42080000    # 34.0f

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->mAngle:F

    .line 35
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mAngle:F

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatErStrtAngle:F

    .line 36
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErStrtAngle:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatErEndAngle:F

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 48
    invoke-direct {p0}, Lcom/game/sdk/view/LVEatBeans;->initPaint()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/view/LVEatBeans;)F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mWidth:F

    return v0
.end method

.method static synthetic access$1(Lcom/game/sdk/view/LVEatBeans;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/view/LVEatBeans;)F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    return v0
.end method

.method static synthetic access$3(Lcom/game/sdk/view/LVEatBeans;F)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/game/sdk/view/LVEatBeans;->eatErPositonX:F

    return-void
.end method

.method static synthetic access$4(Lcom/game/sdk/view/LVEatBeans;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mAngle:F

    return v0
.end method

.method static synthetic access$5(Lcom/game/sdk/view/LVEatBeans;F)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/game/sdk/view/LVEatBeans;->eatErStrtAngle:F

    return-void
.end method

.method static synthetic access$6(Lcom/game/sdk/view/LVEatBeans;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatErStrtAngle:F

    return v0
.end method

.method static synthetic access$7(Lcom/game/sdk/view/LVEatBeans;F)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/game/sdk/view/LVEatBeans;->eatErEndAngle:F

    return-void
.end method

.method private initPaint()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "loading_color"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaintEye:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaintEye:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaintEye:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPaintEye:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "loading_circle"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    return-void
.end method

.method private startViewAnim(FFJ)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "startF"    # F
    .param p2, "endF"    # F
    .param p3, "time"    # J

    .prologue
    const/4 v2, 0x1

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 124
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 127
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 128
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/game/sdk/view/LVEatBeans$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/LVEatBeans$1;-><init>(Lcom/game/sdk/view/LVEatBeans;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/game/sdk/view/LVEatBeans$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/LVEatBeans$2;-><init>(Lcom/game/sdk/view/LVEatBeans;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErPositonX:F

    add-float v7, v0, v2

    .line 63
    .local v7, "eatRightX":F
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErPositonX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->mHigh:F

    div-float/2addr v2, v12

    iget v3, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    div-float/2addr v3, v12

    sub-float/2addr v2, v3

    .line 64
    iget v3, p0, Lcom/game/sdk/view/LVEatBeans;->mHigh:F

    div-float/2addr v3, v12

    iget v4, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    .line 63
    invoke-direct {v1, v0, v2, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    .local v1, "rectF":Landroid/graphics/RectF;
    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErStrtAngle:F

    iget v3, p0, Lcom/game/sdk/view/LVEatBeans;->eatErEndAngle:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/game/sdk/view/LVEatBeans;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 66
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErPositonX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    div-float/2addr v2, v12

    add-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->mHigh:F

    div-float/2addr v2, v12

    iget v3, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/game/sdk/view/LVEatBeans;->beansWidth:F

    div-float/2addr v3, v12

    .line 67
    iget-object v4, p0, Lcom/game/sdk/view/LVEatBeans;->mPaintEye:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/DimensionUtil;->photoDensity(Landroid/content/Context;)I

    move-result v9

    .line 70
    .local v9, "scale":I
    const/16 v10, 0xa

    .line 71
    .local v10, "tempNum":I
    const/4 v0, 0x2

    if-le v9, v0, :cond_0

    .line 72
    add-int/lit8 v0, v9, -0x1

    mul-int/lit8 v10, v0, 0x5

    .line 76
    :goto_0
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mWidth:F

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    mul-float/2addr v2, v12

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->beansWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v6, v0, v10

    .line 78
    .local v6, "beansCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v6, :cond_1

    .line 87
    return-void

    .line 74
    .end local v6    # "beansCount":I
    .end local v8    # "i":I
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    .line 80
    .restart local v6    # "beansCount":I
    .restart local v8    # "i":I
    :cond_1
    mul-int v0, v6, v8

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->beansWidth:F

    div-float/2addr v2, v12

    add-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->mPadding:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F

    add-float v11, v0, v2

    .line 82
    .local v11, "x":F
    cmpl-float v0, v11, v7

    if-lez v0, :cond_2

    .line 83
    iget v0, p0, Lcom/game/sdk/view/LVEatBeans;->mHigh:F

    div-float/2addr v0, v12

    iget v2, p0, Lcom/game/sdk/view/LVEatBeans;->beansWidth:F

    div-float/2addr v2, v12

    iget-object v3, p0, Lcom/game/sdk/view/LVEatBeans;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 55
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->mWidth:F

    .line 56
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->mHigh:F

    .line 57
    return-void
.end method

.method public startAnim()V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->stopAnim()V

    .line 106
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/game/sdk/view/LVEatBeans;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    .line 107
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->clearAnimation()V

    .line 112
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 113
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/game/sdk/view/LVEatBeans;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/view/LVEatBeans;->eatErPositonX:F

    .line 116
    invoke-virtual {p0}, Lcom/game/sdk/view/LVEatBeans;->postInvalidate()V

    .line 118
    :cond_0
    return-void
.end method
