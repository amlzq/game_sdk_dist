.class public Lcom/game/sdk/adapter/ScoreStoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScoreStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;,
        Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public downListener:Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;

.field private mContext:Landroid/content/Context;

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field private scoreStoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ScoreStore;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    .line 50
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/adapter/ScoreStoreAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addNewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ScoreStore;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ScoreStore;

    iget-object v1, v2, Lcom/game/sdk/domain/ScoreStore;->img:Ljava/lang/String;

    .line 82
    .local v1, "url":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 83
    new-instance v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/ScoreStoreAdapter;)V

    .line 84
    .local v0, "holder":Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;
    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout"

    const-string v5, "score_store_item"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "game_iv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->scoreGameIv:Landroid/widget/ImageView;

    .line 89
    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "game_name_tv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    iput-object v2, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "exchange_btn"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 91
    iput-object v2, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->exchangeBtn:Landroid/widget/Button;

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v3, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->scoreStoreList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ScoreStore;

    iget-object v2, v2, Lcom/game/sdk/domain/ScoreStore;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->scoreGameIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 105
    :cond_0
    iget-object v2, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->exchangeBtn:Landroid/widget/Button;

    new-instance v3, Lcom/game/sdk/adapter/ScoreStoreAdapter$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/adapter/ScoreStoreAdapter$1;-><init>(Lcom/game/sdk/adapter/ScoreStoreAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->exchangeBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 126
    return-object p2

    .line 95
    .end local v0    # "holder":Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setDownListener(Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;)V
    .locals 0
    .param p1, "downListener"    # Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter;->downListener:Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;

    .line 44
    return-void
.end method
