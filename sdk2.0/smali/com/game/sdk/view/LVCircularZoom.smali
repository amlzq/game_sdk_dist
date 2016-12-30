.class public Lcom/game/sdk/view/LVCircularZoom;
.super Landroid/view/View;
.source "LVCircularZoom.java"


# instance fields
.field private circularCount:I

.field private mAnimatedValue:F

.field private mHigh:F

.field private mJumpValue:I

.field private mMaxRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/game/sdk/view/LVCircularZoom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/game/sdk/view/LVCircularZoom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mWidth:F

    .line 23
    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mHigh:F

    .line 24
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mMaxRadius:F

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->circularCount:I

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mAnimatedValue:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mJumpValue:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 39
    invoke-direct {p0}, Lcom/game/sdk/view/LVCircularZoom;->initPaint()V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/view/LVCircularZoom;F)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/game/sdk/view/LVCircularZoom;->mAnimatedValue:F

    return-void
.end method

.method static synthetic access$1(Lcom/game/sdk/view/LVCircularZoom;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/view/LVCircularZoom;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mJumpValue:I

    return v0
.end method

.method static synthetic access$3(Lcom/game/sdk/view/LVCircularZoom;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/game/sdk/view/LVCircularZoom;->mJumpValue:I

    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    return-void
.end method

.method private startViewAnim(FFJ)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "startF"    # F
    .param p2, "endF"    # F
    .param p3, "time"    # J

    .prologue
    const/4 v2, 0x1

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 97
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 100
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 101
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/game/sdk/view/LVCircularZoom$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/LVCircularZoom$1;-><init>(Lcom/game/sdk/view/LVCircularZoom;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/game/sdk/view/LVCircularZoom$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/LVCircularZoom$2;-><init>(Lcom/game/sdk/view/LVCircularZoom;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget v2, p0, Lcom/game/sdk/view/LVCircularZoom;->mWidth:F

    iget v3, p0, Lcom/game/sdk/view/LVCircularZoom;->circularCount:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 56
    .local v0, "circularX":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/game/sdk/view/LVCircularZoom;->circularCount:I

    if-lt v1, v2, :cond_0

    .line 67
    return-void

    .line 58
    :cond_0
    iget v2, p0, Lcom/game/sdk/view/LVCircularZoom;->mJumpValue:I

    iget v3, p0, Lcom/game/sdk/view/LVCircularZoom;->circularCount:I

    rem-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 59
    int-to-float v2, v1

    mul-float/2addr v2, v0

    div-float v3, v0, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/game/sdk/view/LVCircularZoom;->mHigh:F

    div-float/2addr v3, v6

    iget v4, p0, Lcom/game/sdk/view/LVCircularZoom;->mMaxRadius:F

    iget v5, p0, Lcom/game/sdk/view/LVCircularZoom;->mAnimatedValue:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/game/sdk/view/LVCircularZoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    int-to-float v2, v1

    mul-float/2addr v2, v0

    div-float v3, v0, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/game/sdk/view/LVCircularZoom;->mHigh:F

    div-float/2addr v3, v6

    iget v4, p0, Lcom/game/sdk/view/LVCircularZoom;->mMaxRadius:F

    iget-object v5, p0, Lcom/game/sdk/view/LVCircularZoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 45
    invoke-virtual {p0}, Lcom/game/sdk/view/LVCircularZoom;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mWidth:F

    .line 46
    invoke-virtual {p0}, Lcom/game/sdk/view/LVCircularZoom;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mHigh:F

    .line 48
    return-void
.end method

.method public startAnim()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/game/sdk/view/LVCircularZoom;->stopAnim()V

    .line 79
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/game/sdk/view/LVCircularZoom;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    .line 80
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/game/sdk/view/LVCircularZoom;->clearAnimation()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/view/LVCircularZoom;->mAnimatedValue:F

    .line 86
    iput v1, p0, Lcom/game/sdk/view/LVCircularZoom;->mJumpValue:I

    .line 87
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 88
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 91
    :cond_0
    return-void
.end method
