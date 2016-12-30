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
    .line 37
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/ShareDialog;->imgs:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 7

    .prologue
    .line 48
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 49
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "share_dialog"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "wechat_layout"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/game/sdk/view/ShareDialog;->wechatLayout:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "friends_layout"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/game/sdk/view/ShareDialog;->friendsLayout:Landroid/widget/RelativeLayout;

    .line 52
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "qq_layout"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/game/sdk/view/ShareDialog;->qqLayout:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "weibo_layout"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/game/sdk/view/ShareDialog;->weiboLayout:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "cancel_layout"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/game/sdk/view/ShareDialog;->cancelLayout:Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/ShareDialog;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/game/sdk/view/ShareDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 58
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 59
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x140

    invoke-static {v4, v5}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->wechatLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->friendsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->qqLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->weiboLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v4, p0, Lcom/game/sdk/view/ShareDialog;->cancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "wechat_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->imgs:Ljava/util/List;

    const-string v1, "http://www.qqtn.com/skin/new2013/images/logo.png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->imgs:Ljava/util/List;

    const-string v1, "http://www.qqtn.com/file/2013/2015-3/2015324994.png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->imgs:Ljava/util/List;

    const-string v1, "http://www.qqtn.com/file/2011/2011-4/20114199556.jpg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u6e38\u620fSDK\u5206\u4eab"

    iget-object v2, p0, Lcom/game/sdk/view/ShareDialog;->imgs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/game/sdk/utils/ShareUtil;->openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "friends_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u6e38\u620fSDK\u5206\u4eab"

    const-string v2, "http://www.qqtn.com/skin/new2013/images/logo.png"

    invoke-static {v0, v1, v2, v4}, Lcom/game/sdk/utils/ShareUtil;->openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "qq_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 90
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u6e38\u620fSDK\u5206\u4eab"

    const-string v2, "http://www.qqtn.com/skin/new2013/images/logo.png"

    invoke-static {v0, v1, v2, v4}, Lcom/game/sdk/utils/ShareUtil;->openQQShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "weibo_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u6e38\u620fSDK\u5206\u4eab"

    const-string v2, "http://www.qqtn.com/skin/new2013/images/logo.png"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/ShareUtil;->openWeiboShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/ShareDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "cancel_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/game/sdk/view/ShareDialog;->dismiss()V

    .line 100
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/game/sdk/view/ShareDialog;->initView()V

    .line 45
    return-void
.end method
