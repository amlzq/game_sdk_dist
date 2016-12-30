.class public Lcom/game/sdk/domain/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"


# instance fields
.field public code:I

.field public errorMsg:Ljava/lang/String;

.field public orderSn:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "order_sn"
    .end annotation
.end field

.field public params:Lcom/game/sdk/domain/PayParams;

.field public rmb_money:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rmbMoney"
    .end annotation
.end field

.field public rsmd5:Ljava/lang/String;

.field public starttime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
