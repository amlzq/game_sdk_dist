.class public Lcom/game/sdk/floatwindow/FloatViewImpl;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "FloatViewImpl"

.field public static dragBitmap:Landroid/graphics/Bitmap;

.field private static instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

.field public static speed:I

.field private static wmParams:Landroid/view/WindowManager$LayoutParams;

.field private static wmParams2:Landroid/view/WindowManager$LayoutParams;

.field private static xfor:I


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isClick:Z

.field private isHolder:Z

.field isOne:Z

.field public leftBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mFloatLayout:Landroid/widget/RelativeLayout;

.field private mFloatView:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onclick:Landroid/view/View$OnClickListener;

.field public rightBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->speed:I

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isOne:Z

    .line 53
    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    .line 351
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$1;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->onclick:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    return v0
.end method

.method static synthetic access$10(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/floatwindow/FloatViewImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/floatwindow/FloatViewImpl;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V

    return-void
.end method

.method static synthetic access$14(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    return-void
.end method

.method static synthetic access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$6()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$7(I)V
    .locals 0

    .prologue
    .line 54
    sput p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    return-void
.end method

.method static synthetic access$8(Lcom/game/sdk/floatwindow/FloatViewImpl;I)I
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/game/sdk/floatwindow/FloatViewImpl;IIII)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->animate(IIII)V

    return-void
.end method

.method private animate(IIII)V
    .locals 8
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "y1"    # I
    .param p4, "y2"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    const-string v3, "x"

    new-array v4, v7, [I

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 250
    .local v1, "mPropertyValuesX":Landroid/animation/PropertyValuesHolder;
    const-string v3, "y"

    new-array v4, v7, [I

    aput p3, v4, v5

    aput p4, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 251
    .local v2, "mPropertyValuesY":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v5

    .line 252
    aput-object v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 253
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v3}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    new-instance v3, Lcom/game/sdk/floatwindow/FloatViewImpl$3;

    invoke-direct {v3, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$3;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    new-instance v3, Lcom/game/sdk/floatwindow/FloatViewImpl$4;

    invoke-direct {v3, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$4;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 288
    return-void
.end method

.method private checkXY(I)I
    .locals 5
    .param p1, "y"    # I

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42480000    # 50.0f

    .line 160
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v0

    .line 161
    .local v0, "height":I
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int p1, v0, v1

    .line 165
    :cond_0
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 168
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkXY-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 169
    return p1
.end method

.method private createFloatView()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 104
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 105
    sput v3, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    .line 106
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 107
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7d2

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 111
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 120
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 121
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 122
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, -0xb4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    :cond_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 127
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x7d2

    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 129
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 131
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 133
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 138
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 139
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 140
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 141
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, -0xb4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 147
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 148
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 151
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 152
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "float_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 151
    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->init()V

    .line 157
    return-void

    .line 107
    :cond_2
    const/16 v0, 0x7d5

    goto/16 :goto_0

    .line 127
    :cond_3
    const/16 v0, 0x7d5

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-class v1, Lcom/game/sdk/floatwindow/FloatViewImpl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v0

    sput-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    .line 69
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 72
    :cond_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideFloat()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 373
    return-void
.end method

.method private init()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "iv_float"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Lcom/game/sdk/floatwindow/FloatViewImpl$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$2;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->onclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method

.method private setBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 297
    const-string v0, "float_holder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_0
    const-string v0, "float_holder2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_1
    const-string v0, "float_drag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_2
    return-void
.end method

.method private setBackground2(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 312
    return-void
.end method

.method private setHolder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    .line 318
    sget v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$5;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$5;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-static {v2, v3, v0}, Lcom/game/sdk/utils/Util;->postDelayed(JLjava/lang/Runnable;)V

    .line 339
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$6;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$6;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-static {v2, v3, v0}, Lcom/game/sdk/utils/Util;->postDelayed(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setMenuOut()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method


# virtual methods
.method public ShowFloat()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 388
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V

    .line 389
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    .line 79
    :try_start_0
    const-string v1, "drag_image"

    invoke-static {p1, v1}, Lcom/game/sdk/utils/Util;->getLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    .line 81
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_drag"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    const-string v1, "drag_left_image"

    invoke-static {p1, v1}, Lcom/game/sdk/utils/Util;->getLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    .line 86
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_holder"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    .line 90
    :cond_1
    const-string v1, "drag_right_image"

    invoke-static {p1, v1}, Lcom/game/sdk/utils/Util;->getLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;

    .line 91
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_holder2"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->createFloatView()V

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FloatViewImpl image error --- "

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeFloat()V
    .locals 2

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 383
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method
