.class public Lcom/game/sdk/view/ServiceDialog;
.super Landroid/app/Dialog;
.source "ServiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private callLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 7

    .prologue
    .line 38
    iget-object v4, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 39
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "service_dialog"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 41
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "call_layout"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/game/sdk/view/ServiceDialog;->callLayout:Landroid/widget/RelativeLayout;

    .line 42
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/ServiceDialog;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/game/sdk/view/ServiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 47
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 48
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x140

    invoke-static {v4, v5}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    iget-object v4, p0, Lcom/game/sdk/view/ServiceDialog;->callLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "call_layout"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "tel:4007966071"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/game/sdk/view/ServiceDialog;->initView()V

    .line 35
    return-void
.end method
