.class public Lcom/game/sdk/ui/fragment/GameCoinListFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "GameCoinListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/GameCoinListFragment$GameCoinTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/GameCoinAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private gameCoinEngin:Lcom/game/sdk/engin/GameCoinEngin;

.field gameCoinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GameCoin;",
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

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;-><init>(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->handler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)Lcom/game/sdk/adapter/GameCoinAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->adapter:Lcom/game/sdk/adapter/GameCoinAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)Lcom/game/sdk/engin/GameCoinEngin;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->gameCoinEngin:Lcom/game/sdk/engin/GameCoinEngin;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "game_coin_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->gameCoinList:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/game/sdk/adapter/GameCoinAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->gameCoinList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/GameCoinAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->adapter:Lcom/game/sdk/adapter/GameCoinAdapter;

    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->adapter:Lcom/game/sdk/adapter/GameCoinAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    new-instance v0, Lcom/game/sdk/ui/fragment/GameCoinListFragment$GameCoinTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/GameCoinListFragment$GameCoinTask;-><init>(Lcom/game/sdk/ui/fragment/GameCoinListFragment;Lcom/game/sdk/ui/fragment/GameCoinListFragment$GameCoinTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/GameCoinListFragment$GameCoinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 71
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 72
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->backIv:Landroid/widget/ImageView;

    .line 73
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->titleTv:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "game_coin_list_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v0, "game_coin_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->listView:Landroid/widget/ListView;

    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/game/sdk/engin/GameCoinEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/GameCoinEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->gameCoinEngin:Lcom/game/sdk/engin/GameCoinEngin;

    .line 77
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 102
    return-void
.end method
