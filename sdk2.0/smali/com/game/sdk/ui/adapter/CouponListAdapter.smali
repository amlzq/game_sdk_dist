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
    .line 26
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout"

    const-string v9, "coupon_list_item"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, "view":Landroid/view/View;
    move-object p2, v5

    .line 62
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "good_name_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, "goodNameTv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "good_worth_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "goodWorthTv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "start_date_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 65
    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, "startDateTv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "end_date_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "endDateTv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "use_date_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 71
    .local v4, "useDateLayout":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsUcStartTime:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsUcEndTime:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 75
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsUcStartTime:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsUcEndTime:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    :cond_1
    :goto_0
    return-object p2

    .line 78
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsUcStartTime:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object v8, Lcom/game/sdk/utils/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/CouponInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/CouponInfo;->goodsUcEndTime:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object v8, Lcom/game/sdk/utils/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
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
    .line 33
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/CouponListAdapter;->couponInfos:Ljava/util/List;

    .line 37
    return-void
.end method
