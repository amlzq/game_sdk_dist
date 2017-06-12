.class public Lcom/game/sdk/view/PayResultDialog;
.super Landroid/app/Dialog;
.source "PayResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/view/PayResultDialog$PayResultListener;
    }
.end annotation


# instance fields
.field private continueBtn:Landroid/widget/Button;

.field imgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private payExitBtn:Landroid/widget/Button;

.field public payResultListener:Lcom/game/sdk/view/PayResultDialog$PayResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/PayResultDialog;->imgs:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getPayResultListener()Lcom/game/sdk/view/PayResultDialog$PayResultListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/game/sdk/view/PayResultDialog;->payResultListener:Lcom/game/sdk/view/PayResultDialog$PayResultListener;

    return-object v0
.end method

.method public initView()V
    .locals 5

    .prologue
    .line 50
    iget-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "pay_result_dialog"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "continue_pay_btn"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->continueBtn:Landroid/widget/Button;

    .line 54
    iget-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "pay_exit_btn"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->payExitBtn:Landroid/widget/Button;

    .line 56
    invoke-virtual {p0, v1}, Lcom/game/sdk/view/PayResultDialog;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->continueBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v2, p0, Lcom/game/sdk/view/PayResultDialog;->payExitBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "continue_pay_btn"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/game/sdk/view/PayResultDialog;->payResultListener:Lcom/game/sdk/view/PayResultDialog$PayResultListener;

    invoke-interface {v0}, Lcom/game/sdk/view/PayResultDialog$PayResultListener;->continuePay()V

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/PayResultDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "pay_exit_btn"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/game/sdk/view/PayResultDialog;->payResultListener:Lcom/game/sdk/view/PayResultDialog$PayResultListener;

    invoke-interface {v0}, Lcom/game/sdk/view/PayResultDialog$PayResultListener;->paySuccess()V

    .line 80
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/game/sdk/view/PayResultDialog;->initView()V

    .line 47
    return-void
.end method

.method public setPayResultListener(Lcom/game/sdk/view/PayResultDialog$PayResultListener;)V
    .locals 0
    .param p1, "payResultListener"    # Lcom/game/sdk/view/PayResultDialog$PayResultListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/game/sdk/view/PayResultDialog;->payResultListener:Lcom/game/sdk/view/PayResultDialog$PayResultListener;

    .line 36
    return-void
.end method
