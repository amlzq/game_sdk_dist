.class public Lcom/game/sdk/adapter/ChargeRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChargeRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;,
        Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public cancelDialog:Lcom/game/sdk/view/CancelConfigDialog;

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

.field public payListener:Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/game/sdk/view/CancelConfigDialog;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "cancelDialog"    # Lcom/game/sdk/view/CancelConfigDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;",
            "Lcom/game/sdk/view/CancelConfigDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->cancelDialog:Lcom/game/sdk/view/CancelConfigDialog;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/adapter/ChargeRecordAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addList(Ljava/util/List;)V
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
    .line 50
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    goto :goto_0
.end method

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
    .line 58
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    goto :goto_0
.end method

.method public clearAllList()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    move v3, p1

    .line 93
    .local v3, "pos":I
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/ChargeRecord;

    .line 94
    .local v0, "chargeRecord":Lcom/game/sdk/domain/ChargeRecord;
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v2, v6, Lcom/game/sdk/domain/ChargeRecord;->orderSn:Ljava/lang/String;

    .line 95
    .local v2, "orderSn":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 96
    new-instance v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/ChargeRecordAdapter;)V

    .line 97
    .local v1, "holder":Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout"

    const-string v9, "fysdk_charge_record_item"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "charge_iv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 99
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeIv:Landroid/widget/ImageView;

    .line 102
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "order_id_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 101
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderIdTv:Landroid/widget/TextView;

    .line 104
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "order_state_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderStateTv:Landroid/widget/TextView;

    .line 106
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "game_name_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 105
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    .line 108
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "charge_date_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 107
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeDateTv:Landroid/widget/TextView;

    .line 110
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "charge_money_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 109
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeMoneyTv:Landroid/widget/TextView;

    .line 112
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "charge_real_money_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 111
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeRealMoneyTv:Landroid/widget/TextView;

    .line 116
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "continue_pay_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 115
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->continuePayLayout:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "continue_pay_btn"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 117
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->coutinuePayBtn:Landroid/widget/Button;

    .line 120
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "cancel_pay_btn"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 119
    iput-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->cancelPayBtn:Landroid/widget/Button;

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->continuePayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 129
    :goto_0
    iget-object v7, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderIdTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->orderSn:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v7, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->orderStateTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->statusMsg:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v7, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->gameNameTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->desp:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v7, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeDateTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->finishTime:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeMoneyTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->money:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v7, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeRealMoneyTv:Landroid/widget/TextView;

    .line 135
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->rmbMoney:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->rmbMoney:Ljava/lang/String;

    .line 134
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->payWayTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v8, "string"

    const-string v9, "alipay_pay_text"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "zfbString":Ljava/lang/String;
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v8, "string"

    const-string v9, "wxpay_pay_text"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "wxString":Ljava/lang/String;
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->payWayTitle:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeIv:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "alipay_icon"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v6, v6, Lcom/game/sdk/domain/ChargeRecord;->payWayTitle:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->chargeIv:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "tencent_pay_icon"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    .end local v4    # "wxString":Ljava/lang/String;
    .end local v5    # "zfbString":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->chargeRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/ChargeRecord;

    iget v6, v6, Lcom/game/sdk/domain/ChargeRecord;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 154
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->continuePayLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    :goto_2
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->coutinuePayBtn:Landroid/widget/Button;

    new-instance v7, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;-><init>(Lcom/game/sdk/adapter/ChargeRecordAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->cancelPayBtn:Landroid/widget/Button;

    new-instance v7, Lcom/game/sdk/adapter/ChargeRecordAdapter$2;

    invoke-direct {v7, p0, v3}, Lcom/game/sdk/adapter/ChargeRecordAdapter$2;-><init>(Lcom/game/sdk/adapter/ChargeRecordAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-object p2

    .line 125
    .end local v1    # "holder":Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
    goto/16 :goto_0

    .line 135
    :cond_3
    const-string v6, "0"

    goto/16 :goto_1

    .line 156
    :cond_4
    iget-object v6, v1, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->continuePayLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPayListener(Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;)V
    .locals 0
    .param p1, "payListener"    # Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->payListener:Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;

    .line 40
    return-void
.end method
