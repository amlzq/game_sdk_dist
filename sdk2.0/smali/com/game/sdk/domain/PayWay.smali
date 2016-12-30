.class public Lcom/game/sdk/domain/PayWay;
.super Ljava/lang/Object;
.source "PayWay.java"


# instance fields
.field public channelDes:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "c"
    .end annotation
.end field

.field public channelId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "a"
    .end annotation
.end field

.field public channelMsg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "b"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "channelMsg"    # Ljava/lang/String;
    .param p3, "channelDes"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/game/sdk/domain/PayWay;->channelId:I

    .line 20
    iput-object p2, p0, Lcom/game/sdk/domain/PayWay;->channelMsg:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/game/sdk/domain/PayWay;->channelDes:Ljava/lang/String;

    .line 22
    return-void
.end method
