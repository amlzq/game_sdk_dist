.class public Lcom/game/sdk/view/NoticeDialog;
.super Landroid/app/Dialog;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private closeIv:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private notice:Ljava/lang/String;

.field private webview:Lcom/game/sdk/view/CustomWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/game/sdk/view/NoticeDialog;->notice:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 43
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 44
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "notice_dialog"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 47
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "close_icon"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->closeIv:Landroid/widget/ImageView;

    .line 48
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "notice_webview"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/view/CustomWebView;

    iput-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->webview:Lcom/game/sdk/view/CustomWebView;

    .line 51
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->webview:Lcom/game/sdk/view/CustomWebView;

    iget-object v5, p0, Lcom/game/sdk/view/NoticeDialog;->notice:Ljava/lang/String;

    const-string v6, "text/html; charset=UTF-8"

    invoke-virtual {v4, v5, v6, v7}, Lcom/game/sdk/view/CustomWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/NoticeDialog;->setContentView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/game/sdk/view/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 59
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v4, v4, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 64
    :cond_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v4, v4, Lcom/game/sdk/domain/InItInfo;->vertical:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 65
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    iget-object v4, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 68
    :cond_1
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "close_icon"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/game/sdk/view/NoticeDialog;->dismiss()V

    .line 75
    iget-object v0, p0, Lcom/game/sdk/view/NoticeDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/game/sdk/view/NoticeDialog;->initView()V

    .line 40
    return-void
.end method
