.class public Lcom/game/sdk/view/LoginInDialog;
.super Landroid/app/Dialog;
.source "LoginInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private changeAccountTv:Landroid/widget/TextView;

.field private loadingIv:Landroid/widget/ImageView;

.field private loginUserTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/game/sdk/view/LoginInDialog;->userName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 8

    .prologue
    .line 49
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 50
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "login_in_dialog"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "welcome_user"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->loginUserTv:Landroid/widget/TextView;

    .line 52
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "logining_icon"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->loadingIv:Landroid/widget/ImageView;

    .line 53
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "change_account_tv"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->changeAccountTv:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/LoginInDialog;->setContentView(Landroid/view/View;)V

    .line 56
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->userName:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->loginUserTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/game/sdk/view/LoginInDialog;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 64
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 66
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "change_account_tv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->dismiss()V

    .line 101
    const/4 v1, 0x1

    sput-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isChangeAccount:Z

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->initView()V

    .line 45
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->startAnimation()V

    .line 46
    return-void
.end method

.method public rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 87
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 89
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 91
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 92
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 94
    return-object v0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->startAnimation()V

    .line 78
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->show()V

    .line 79
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game/sdk/view/LoginInDialog;->loadingIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/game/sdk/view/LoginInDialog;->loadingIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    :cond_0
    return-void
.end method
