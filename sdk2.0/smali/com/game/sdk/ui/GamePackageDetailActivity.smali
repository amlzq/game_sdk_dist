.class public Lcom/game/sdk/ui/GamePackageDetailActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "GamePackageDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;,
        Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private gameId:Ljava/lang/String;

.field private gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

.field gamePackageDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/GamePackageDetailActivity$1;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/engin/GamePackageDetailEngin;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/GamePackageDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public gameBoxDown()V
    .locals 4

    .prologue
    .line 184
    const-string v2, "com.game.sdk.service.DownGameBoxService"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v2, "game_box"

    invoke-static {v2}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    .end local v0    # "downFile":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 194
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 197
    :cond_1
    const-string v2, "\u8bf7\u5728WIFI\u7f51\u7edc\u4e0b\u4f53\u9a8c\u6e38\u620f\u76d2\u5b50"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v0    # "downFile":Ljava/io/File;
    :cond_2
    const-string v2, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u4e2d"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "activity_game_package_detail"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    .line 97
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->setDownListener(Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;)V

    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    new-instance v0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity;Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public initVars()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 73
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gameId:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 82
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->backIv:Landroid/widget/ImageView;

    .line 83
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->titleTv:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "game_package_detail_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string v0, "game_package_detail_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    .line 86
    invoke-static {p0}, Lcom/game/sdk/engin/GamePackageDetailEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/GamePackageDetailEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
