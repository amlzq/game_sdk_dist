.class public Lcom/game/sdk/adapter/CompAignAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompAignAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private compaignInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CompAign;",
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
            "Lcom/game/sdk/domain/CompAign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CompAign;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    .line 35
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/adapter/CompAignAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/adapter/CompAignAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

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
            "Lcom/game/sdk/domain/CompAign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CompAign;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iput-object p1, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CompAign;

    iget-object v2, v3, Lcom/game/sdk/domain/CompAign;->img:Ljava/lang/String;

    .line 67
    .local v2, "url":Ljava/lang/String;
    move v1, p1

    .line 68
    .local v1, "pos":I
    if-nez p2, :cond_1

    .line 69
    new-instance v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/CompAignAdapter;)V

    .line 70
    .local v0, "holder":Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "compaign_item"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "compaign_iv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 72
    iput-object v3, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->compAignIv:Landroid/widget/ImageView;

    .line 75
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "compaign_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    iput-object v3, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->compAignTv:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "compaign_date"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    iput-object v3, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->compAignDateTv:Landroid/widget/TextView;

    .line 78
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "detail_btn"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->detailBtn:Landroid/widget/Button;

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v4, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->compAignTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CompAign;

    iget-object v3, v3, Lcom/game/sdk/domain/CompAign;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->compAignDateTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/Long;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CompAign;

    iget-object v3, v3, Lcom/game/sdk/domain/CompAign;->startTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "000"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/game/sdk/utils/TimeUtils;->getTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->compAignIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 90
    :cond_0
    iget-object v3, v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;->detailBtn:Landroid/widget/Button;

    new-instance v4, Lcom/game/sdk/adapter/CompAignAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/game/sdk/adapter/CompAignAdapter$1;-><init>(Lcom/game/sdk/adapter/CompAignAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object p2

    .line 81
    .end local v0    # "holder":Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/CompAignAdapter$ViewHolder;
    goto :goto_0
.end method
