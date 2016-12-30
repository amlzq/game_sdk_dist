.class public Lcom/game/sdk/adapter/GameCoinAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameCoinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private gameCoinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GameCoin;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GameCoin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GameCoin;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public addNewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GameCoin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GameCoin;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iput-object p1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/GameCoinAdapter;)V

    .line 58
    .local v0, "holder":Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;
    iget-object v1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "game_coin_item"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    iget-object v1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "game_name_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "game_money_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;->gameMoneyTv:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, v0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/GameCoin;

    iget-object v1, v1, Lcom/game/sdk/domain/GameCoin;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;->gameMoneyTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/GameCoinAdapter;->gameCoinList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/GameCoin;

    iget-object v1, v1, Lcom/game/sdk/domain/GameCoin;->money:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object p2

    .line 66
    .end local v0    # "holder":Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;
    goto :goto_0
.end method
