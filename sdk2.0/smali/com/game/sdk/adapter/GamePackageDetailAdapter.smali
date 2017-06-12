.class public Lcom/game/sdk/adapter/GamePackageDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "GamePackageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;,
        Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public downListener:Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;

.field private gamePackageDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mOkHttpClient:Lokhttp3/OkHttpClient;


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
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GamePackageDetail;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    .line 51
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

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
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GamePackageDetail;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    move v1, p1

    .line 82
    .local v1, "pos":I
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v2, v3, Lcom/game/sdk/domain/GamePackageDetail;->img:Ljava/lang/String;

    .line 83
    .local v2, "url":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 84
    new-instance v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)V

    .line 85
    .local v0, "holder":Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "game_package_detail_item"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_iv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 87
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gamePackageIv:Landroid/widget/ImageView;

    .line 90
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_name_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 89
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    .line 92
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_package_surplus_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gamePackageSulplusTv:Landroid/widget/TextView;

    .line 94
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_package_detail_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gamePackageDetailTv:Landroid/widget/TextView;

    .line 96
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "detail_get_btn"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 95
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->detailGetBtn:Landroid/widget/Button;

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_0
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gamePackageIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 106
    :cond_0
    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v3, v3, Lcom/game/sdk/domain/GamePackageDetail;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gamePackageSulplusTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v3, v3, Lcom/game/sdk/domain/GamePackageDetail;->remainNum:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->gamePackageDetailTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v3, v3, Lcom/game/sdk/domain/GamePackageDetail;->content:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->detailGetBtn:Landroid/widget/Button;

    new-instance v4, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;-><init>(Lcom/game/sdk/adapter/GamePackageDetailAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object p2

    .line 99
    .end local v0    # "holder":Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setDownListener(Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;)V
    .locals 0
    .param p1, "downListener"    # Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->downListener:Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;

    .line 45
    return-void
.end method
