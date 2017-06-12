.class public Lcom/game/sdk/view/ShareDialog;
.super Landroid/app/Dialog;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelLayout:Landroid/widget/LinearLayout;

.field private friendsLayout:Landroid/widget/RelativeLayout;

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

.field private qqLayout:Landroid/widget/RelativeLayout;

.field private wechatLayout:Landroid/widget/RelativeLayout;

.field private weiboLayout:Landroid/widget/RelativeLayout;


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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/ShareDialog;->imgs:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 9

    .prologue
    .line 50
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 51
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v7, "layout"

    const-string v8, "share_dialog"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "wechat_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ShareDialog;->wechatLayout:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "friends_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ShareDialog;->friendsLayout:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "qq_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ShareDialog;->qqLayout:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "weibo_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ShareDialog;->weiboLayout:Landroid/widget/RelativeLayout;

    .line 56
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "cancel_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ShareDialog;->cancelLayout:Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/ShareDialog;->setContentView(Landroid/view/View;)V

    .line 59
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 60
    .local v4, "ratio":D
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v6, v6, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v6, :cond_0

    .line 61
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 64
    :cond_0
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v6, v6, Lcom/game/sdk/domain/InItInfo;->vertical:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 65
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/view/ShareDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 71
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    const/16 v6, 0x11

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->wechatLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->friendsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->qqLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->weiboLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v6, p0, Lcom/game/sdk/view/ShareDialog;->cancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->shareContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v1, Lcom/game/sdk/domain/UserInfo;->shareContent:Ljava/lang/String;

    .line 89
    .local v0, "shareContent":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "wechat_layout"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 100
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/game/sdk/utils/ShareUtil;->OpenWxShareText(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "friends_layout"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 105
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/game/sdk/utils/ShareUtil;->openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "qq_layout"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/game/sdk/utils/ShareUtil;->openQQShareWithText(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "weibo_layout"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 112
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 113
    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/game/sdk/utils/ShareUtil;->openWeiboShareWithImage(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "cancel_layout"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/game/sdk/view/ShareDialog;->dismiss()V

    .line 119
    :cond_4
    return-void

    .line 87
    .end local v0    # "shareContent":Ljava/lang/String;
    :cond_5
    const-string v0, "\u6e38\u620fSDK\u5206\u4eab"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/game/sdk/view/ShareDialog;->initView()V

    .line 47
    return-void
.end method
