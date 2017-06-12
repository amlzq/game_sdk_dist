.class public Lcom/game/sdk/adapter/MainModuleAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field private moduleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
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
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    .line 32
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 33
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
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    iget-object v1, v2, Lcom/game/sdk/domain/ModuleInfo;->ico:Ljava/lang/String;

    .line 65
    .local v1, "url":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/MainModuleAdapter;)V

    .line 67
    .local v0, "holder":Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout"

    const-string v5, "main_module_item"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "module_iv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleIv:Landroid/widget/ImageView;

    .line 70
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "module_tv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleTv:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "num_layout"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numLayout:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "num_tv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numTv:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    iget v2, v2, Lcom/game/sdk/domain/ModuleInfo;->num:I

    if-lez v2, :cond_2

    .line 82
    iget-object v2, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    iget-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    iget v2, v2, Lcom/game/sdk/domain/ModuleInfo;->num:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    iget-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/ModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 94
    :cond_0
    return-object p2

    .line 78
    .end local v0    # "holder":Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    goto :goto_0

    .line 85
    :cond_2
    iget-object v2, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method
