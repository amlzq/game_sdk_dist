.class Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChargeRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/ChargeRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cancelPayBtn:Landroid/widget/Button;

.field chargeDateTv:Landroid/widget/TextView;

.field chargeIv:Landroid/widget/ImageView;

.field chargeMoneyTv:Landroid/widget/TextView;

.field chargeRealMoneyTv:Landroid/widget/TextView;

.field continuePayLayout:Landroid/widget/RelativeLayout;

.field coutinuePayBtn:Landroid/widget/Button;

.field gameNameTv:Landroid/widget/TextView;

.field orderIdTv:Landroid/widget/TextView;

.field orderStateTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/ChargeRecordAdapter;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
