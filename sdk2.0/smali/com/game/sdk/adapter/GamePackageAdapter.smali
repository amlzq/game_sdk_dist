.class public Lcom/game/sdk/adapter/GamePackageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GamePackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private gamePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackage;",
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
            "Lcom/game/sdk/domain/GamePackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GamePackage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    .line 38
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/adapter/GamePackageAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/adapter/GamePackageAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

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
            "Lcom/game/sdk/domain/GamePackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GamePackage;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    move v1, p1

    .line 70
    .local v1, "pos":I
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackage;

    iget-object v2, v3, Lcom/game/sdk/domain/GamePackage;->ico:Ljava/lang/String;

    .line 71
    .local v2, "url":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 72
    new-instance v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/GamePackageAdapter;)V

    .line 73
    .local v0, "holder":Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "game_package_item"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_detail_layout"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 75
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->detailLayout:Landroid/widget/LinearLayout;

    .line 77
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_iv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->gamePackageIv:Landroid/widget/ImageView;

    .line 79
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_name_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    .line 81
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "game_package_count_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->gameCountTv:Landroid/widget/TextView;

    .line 82
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "detail_btn"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->detailBtn:Landroid/widget/Button;

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackage;

    iget-object v3, v3, Lcom/game/sdk/domain/GamePackage;->gameName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->gameCountTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackage;

    iget-object v3, v3, Lcom/game/sdk/domain/GamePackage;->num:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->gamePackageIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 95
    :cond_0
    iget-object v3, v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->detailBtn:Landroid/widget/Button;

    new-instance v4, Lcom/game/sdk/adapter/GamePackageAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/game/sdk/adapter/GamePackageAdapter$1;-><init>(Lcom/game/sdk/adapter/GamePackageAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object p2

    .line 85
    .end local v0    # "holder":Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;
    goto :goto_0
.end method
