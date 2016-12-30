.class public Lcom/game/sdk/utils/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static dialog:Landroid/app/Dialog;

.field private static iv_pd:Landroid/widget/ImageView;

.field private static tv_msg:Landroid/widget/TextView;

.field private static view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDialog()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 90
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->iv_pd:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 91
    const/4 v1, 0x0

    sput-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog dismiss\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getdialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Landroid/app/Dialog;

    const-string v2, "style"

    .line 30
    const-string v3, "CustomSdkDialog"

    .line 29
    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    .line 33
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, -0x50

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 36
    const-string v2, "layout"

    const-string v3, "ttw_custom_loading"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/utils/DialogUtil;->view:Landroid/view/View;

    .line 37
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->view:Landroid/view/View;

    .line 38
    const-string v2, "id"

    const-string v3, "iv_circle"

    .line 37
    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/game/sdk/utils/DialogUtil;->iv_pd:Landroid/widget/ImageView;

    .line 39
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 40
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->view:Landroid/view/View;

    .line 42
    const-string v2, "id"

    const-string v3, "tv_msg"

    .line 41
    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/game/sdk/utils/DialogUtil;->tv_msg:Landroid/widget/TextView;

    .line 43
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    sget-object v2, Lcom/game/sdk/utils/DialogUtil;->view:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 104
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 107
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 110
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 112
    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/game/sdk/utils/DialogUtil;->init(Landroid/content/Context;)V

    .line 57
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->tv_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :try_start_0
    invoke-static {}, Lcom/game/sdk/utils/DialogUtil;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->iv_pd:Landroid/widget/ImageView;

    invoke-static {}, Lcom/game/sdk/utils/DialogUtil;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :try_start_1
    sget-object v0, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :cond_0
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static showDialog(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cansable"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/game/sdk/utils/DialogUtil;->init(Landroid/content/Context;)V

    .line 71
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->tv_msg:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->iv_pd:Landroid/widget/ImageView;

    invoke-static {}, Lcom/game/sdk/utils/DialogUtil;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    :try_start_0
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 76
    sget-object v1, Lcom/game/sdk/utils/DialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog show\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method
