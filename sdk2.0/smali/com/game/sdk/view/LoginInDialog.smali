.class public Lcom/game/sdk/view/LoginInDialog;
.super Landroid/app/Dialog;
.source "LoginInDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object p1, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 8

    .prologue
    .line 30
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 31
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "login_in_dialog"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/LoginInDialog;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 36
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    iget-object v4, p0, Lcom/game/sdk/view/LoginInDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/game/sdk/view/LoginInDialog;->initView()V

    .line 27
    return-void
.end method
