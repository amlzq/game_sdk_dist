.class public Lcom/game/sdk/adapter/ChargeRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChargeRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private chargeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
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
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    .line 26
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
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/ChargeRecordAdapter;)V

    .line 59
    .local v0, "holder":Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "charge_record_item"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "order_id_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderIdTv:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "order_state_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderStateTv:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "game_name_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "charge_date_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeDateTv:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "charge_money_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeMoneyTv:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "charge_way_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeWayTv:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v2, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderIdTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecord;->orderSn:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderStateTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecord;->statusMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecord;->desp:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeDateTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecord;->finishTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeMoneyTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecord;->money:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeWayTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecord;->payWayTitle:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-object p2

    .line 75
    .end local v0    # "holder":Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    goto :goto_0
.end method
