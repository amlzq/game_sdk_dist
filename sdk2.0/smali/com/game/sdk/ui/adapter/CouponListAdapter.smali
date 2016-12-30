.class public Lcom/game/sdk/ui/adapter/CouponListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CouponListAdapter.java"


# instance fields
.field couponInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout"

    const-string v8, "coupon_list_item"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 57
    .local v4, "view":Landroid/view/View;
    move-object p2, v4

    .line 60
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "good_name_tv"

    invoke-static {v5, v6, v7}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "goodNameTv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "good_worth_tv"

    invoke-static {v5, v6, v7}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "goodWorthTv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "start_date_tv"

    invoke-static {v5, v6, v7}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 63
    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "startDateTv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "end_date_tv"

    invoke-static {v5, v6, v7}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "endDateTv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsUcStartTime:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsUcEndTime:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object p2
.end method

.method public initDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    .line 35
    return-void
.end method
