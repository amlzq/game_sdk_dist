.class public Lcom/game/sdk/floatwindow/FloatViewImpl;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "FloatViewImpl"

.field private static instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

.field private static wmParams:Landroid/view/WindowManager$LayoutParams;

.field private static wmParams2:Landroid/view/WindowManager$LayoutParams;

.field private static xfor:I


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isClick:Z

.field isOne:Z

.field private mContext:Landroid/content/Context;

.field private mFloatLayout:Landroid/widget/RelativeLayout;

.field private mFloatView:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onclick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isOne:Z

    .line 43
    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    .line 235
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$1;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->onclick:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    return v0
.end method

.method static synthetic access$10(Lcom/game/sdk/floatwindow/FloatViewImpl;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/floatwindow/FloatViewImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    return-void
.end method

.method static synthetic access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$6()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$7(I)V
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    return-void
.end method

.method static synthetic access$8(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private checkXY()Z
    .locals 6

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, 0x42480000    # 50.0f

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "flag":Z
    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 118
    .local v1, "height":I
    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 119
    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int v3, v1, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_0
    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 123
    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_1
    return v0
.end method

.method private createFloatView()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 63
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 64
    sput v3, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    .line 65
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 66
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 70
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 77
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 79
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x32

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 82
    :cond_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 84
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 86
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 88
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 95
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 96
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 97
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 103
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 104
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 107
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 108
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "float_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 107
    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->init()V

    .line 113
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/game/sdk/floatwindow/FloatViewImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 54
    :cond_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideFloat()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 131
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

    .line 134
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Lcom/game/sdk/floatwindow/FloatViewImpl$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$2;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->onclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private setBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    .line 209
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    invoke-static {v2, v3, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
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
    .line 215
    return-void
.end method

.method private setHolder()V
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    if-nez v0, :cond_0

    .line 219
    const-string v0, "float_holder"

    invoke-direct {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "float_holder2"

    invoke-direct {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMenuOut()V
    .locals 1

    .prologue
    .line 226
    sget v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    if-nez v0, :cond_0

    .line 227
    const-string v0, "float_menu_out"

    invoke-direct {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    .line 228
    const-string v0, "float_bg_left_up"

    invoke-direct {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground2(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "float_menu_out2"

    invoke-direct {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    .line 231
    const-string v0, "float_bg_right_up"

    invoke-direct {p0, v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground2(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public ShowFloat()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V

    .line 271
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->createFloatView()V

    .line 60
    return-void
.end method

.method public removeFloat()V
    .locals 2

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 265
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method
