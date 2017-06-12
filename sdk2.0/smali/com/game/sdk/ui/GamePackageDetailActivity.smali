.class public Lcom/game/sdk/ui/GamePackageDetailActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "GamePackageDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


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

.field private currentPage:I

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

.field private lastItem:I

.field private listView:Landroid/widget/ListView;

.field private loadMoreIcon:Landroid/widget/ImageView;

.field private loadMoreLayout:Landroid/widget/LinearLayout;

.field private loadMoreView:Landroid/view/View;

.field private noDataIv:Landroid/widget/ImageView;

.field private noMoreLayout:Landroid/widget/LinearLayout;

.field private noMoreTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->currentPage:I

    .line 79
    new-instance v0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/GamePackageDetailActivity$1;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->handler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/GamePackageDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noDataIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/engin/GamePackageDetailEngin;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/GamePackageDetailActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->currentPage:I

    return v0
.end method


# virtual methods
.method public downBoxApp()V
    .locals 3

    .prologue
    .line 308
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u6e38\u620f\u76d2\u5b50"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/service/DownGameBoxService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 317
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v1, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public gameBoxDown()V
    .locals 3

    .prologue
    .line 286
    const-string v1, "com.game.sdk.service.DownGameBoxService"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    new-instance v0, Ljava/io/File;

    const-string v1, "game_box"

    invoke-static {v1}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    invoke-static {v0}, Lcom/game/sdk/utils/ZipUtil;->isArchiveFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 304
    .end local v0    # "downFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 295
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 296
    const-string v1, "\u76d2\u5b50\u6587\u4ef6\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->downBoxApp()V

    goto :goto_0

    .line 302
    .end local v0    # "downFile":Ljava/io/File;
    :cond_3
    const-string v1, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u4e2d"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "fysdk_activity_game_package_detail"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    .line 158
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->setDownListener(Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;)V

    .line 159
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadGamePackageDetailData()V

    .line 162
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public initVars()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 122
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gameId:Ljava/lang/String;

    .line 126
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 132
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "list_view_footer"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    .line 134
    const-string v1, "id"

    const-string v2, "load_more_layout"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreLayout:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "no_more_layout"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreLayout:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "loading_icon"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreIcon:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "no_more_tv"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreTv:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "no_data_iv"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noDataIv:Landroid/widget/ImageView;

    .line 140
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->backIv:Landroid/widget/ImageView;

    .line 141
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->titleTv:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "game_package_detail_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const-string v0, "game_package_detail_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    .line 144
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 146
    invoke-static {p0}, Lcom/game/sdk/engin/GamePackageDetailEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/GamePackageDetailEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    .line 147
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    return-void
.end method

.method public loadGamePackageDetailData()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    iget v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->currentPage:I

    iget-object v2, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gameId:Ljava/lang/String;

    new-instance v3, Lcom/game/sdk/ui/GamePackageDetailActivity$2;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/GamePackageDetailActivity$2;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/engin/GamePackageDetailEngin;->getGamePackageDetailList(ILjava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 210
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->finish()V

    .line 182
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

.method protected onPause()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 322
    const-string v0, "GamePackageDetailActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 323
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 324
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 173
    const-string v0, "GamePackageDetailActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 348
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->lastItem:I

    .line 349
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 329
    if-nez p2, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->startAnimation()V

    .line 338
    iget v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->currentPage:I

    .line 340
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadGamePackageDetailData()V

    .line 344
    :cond_0
    return-void
.end method

.method public rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 357
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 359
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 361
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 362
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 364
    return-object v0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 371
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 377
    :cond_0
    return-void
.end method
