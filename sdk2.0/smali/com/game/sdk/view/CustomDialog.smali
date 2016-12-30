.class public Lcom/game/sdk/view/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# instance fields
.field private loadingIv:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private messageTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lcom/game/sdk/view/CustomDialog;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/game/sdk/view/CustomDialog;->message:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 8

    .prologue
    .line 43
    iget-object v4, p0, Lcom/game/sdk/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 44
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/game/sdk/view/CustomDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "custom_dialog"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/game/sdk/view/CustomDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "tv_msg"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/game/sdk/view/CustomDialog;->messageTv:Landroid/widget/TextView;

    .line 47
    iget-object v4, p0, Lcom/game/sdk/view/CustomDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "loading_icon"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/game/sdk/view/CustomDialog;->loadingIv:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 50
    iget-object v4, p0, Lcom/game/sdk/view/CustomDialog;->messageTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/game/sdk/view/CustomDialog;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/game/sdk/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 54
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/game/sdk/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/game/sdk/view/CustomDialog;->initView()V

    .line 39
    invoke-virtual {p0}, Lcom/game/sdk/view/CustomDialog;->startAnimation()V

    .line 40
    return-void
.end method

.method public rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 75
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 77
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 78
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 79
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 80
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 82
    return-object v0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/game/sdk/view/CustomDialog;->startAnimation()V

    .line 66
    invoke-virtual {p0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 67
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/game/sdk/view/CustomDialog;->loadingIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/game/sdk/view/CustomDialog;->loadingIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/game/sdk/view/CustomDialog;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    :cond_0
    return-void
.end method
