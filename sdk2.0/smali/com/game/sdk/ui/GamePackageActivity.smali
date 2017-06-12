.class public Lcom/game/sdk/ui/GamePackageActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "GamePackageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/GamePackageAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackage;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/game/sdk/ui/GamePackageActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/GamePackageActivity$1;-><init>(Lcom/game/sdk/ui/GamePackageActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/GamePackageActivity;)Lcom/game/sdk/adapter/GamePackageAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->adapter:Lcom/game/sdk/adapter/GamePackageAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/GamePackageActivity;)Lcom/game/sdk/engin/GamePackageEngin;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/GamePackageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "fysdk_activity_game_package"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/game/sdk/adapter/GamePackageAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/adapter/GamePackageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->adapter:Lcom/game/sdk/adapter/GamePackageAdapter;

    .line 81
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity;->adapter:Lcom/game/sdk/adapter/GamePackageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/game/sdk/ui/GamePackageActivity$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/GamePackageActivity$2;-><init>(Lcom/game/sdk/ui/GamePackageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    new-instance v0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;-><init>(Lcom/game/sdk/ui/GamePackageActivity;Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 65
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->backIv:Landroid/widget/ImageView;

    .line 66
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->titleTv:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "game_package_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string v0, "game_package_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/GamePackageActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->listView:Landroid/widget/ListView;

    .line 69
    invoke-static {p0}, Lcom/game/sdk/engin/GamePackageEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/GamePackageEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;

    .line 70
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/GamePackageActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/game/sdk/ui/GamePackageActivity;->finish()V

    .line 115
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
    .line 167
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 168
    const-string v0, "GamePackageActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 106
    const-string v0, "GamePackageActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 108
    return-void
.end method
