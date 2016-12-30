.class public Lcom/game/sdk/ui/ScoreStoreActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "ScoreStoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/ScoreStoreActivity$DownAsyncTask;,
        Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

.field private backIv:Landroid/widget/ImageView;

.field gameCoinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
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

.field private scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/game/sdk/ui/ScoreStoreActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ScoreStoreActivity$1;-><init>(Lcom/game/sdk/ui/ScoreStoreActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/adapter/ScoreStoreAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/engin/ScoreStoreEngin;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public gameBoxDown()V
    .locals 4

    .prologue
    .line 171
    const-string v2, "com.game.sdk.service.DownGameBoxService"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v2, "game_box"

    invoke-static {v2}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ScoreStoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    .end local v0    # "downFile":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 181
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    new-instance v2, Lcom/game/sdk/ui/ScoreStoreActivity$DownAsyncTask;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/ScoreStoreActivity$DownAsyncTask;-><init>(Lcom/game/sdk/ui/ScoreStoreActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/ScoreStoreActivity$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 184
    :cond_1
    const-string v2, "\u8bf7\u5728WIFI\u7f51\u7edc\u4e0b\u4f53\u9a8c\u6e38\u620f\u76d2\u5b50"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "downFile":Ljava/io/File;
    :cond_2
    const-string v2, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u4e2d"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "activity_score_store"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/game/sdk/adapter/ScoreStoreAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/adapter/ScoreStoreAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    invoke-virtual {v0, p0}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->setDownListener(Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;)V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;-><init>(Lcom/game/sdk/ui/ScoreStoreActivity;Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 70
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->backIv:Landroid/widget/ImageView;

    .line 71
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->titleTv:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "score_store_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ScoreStoreActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const-string v0, "score_store_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->listView:Landroid/widget/ListView;

    .line 74
    invoke-static {p0}, Lcom/game/sdk/engin/ScoreStoreEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/ScoreStoreEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;

    .line 75
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ScoreStoreActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/game/sdk/ui/ScoreStoreActivity;->finish()V

    .line 101
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
