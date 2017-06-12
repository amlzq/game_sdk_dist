.class public Lcom/game/sdk/domain/ChargeRecord;
.super Ljava/lang/Object;
.source "ChargeRecord.java"


# instance fields
.field public desp:Ljava/lang/String;

.field public finishTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "finish_time"
    .end annotation
.end field

.field public money:Ljava/lang/String;

.field public orderSn:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "order_sn"
    .end annotation
.end field

.field public payWayTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pay_way_title"
    .end annotation
.end field

.field public rmbMoney:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rmb_money"
    .end annotation
.end field

.field public status:I

.field public statusMsg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status_msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
