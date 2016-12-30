.class Lcom/game/sdk/engin/ChargeRecordEngin$2$1;
.super Lcom/alibaba/fastjson/TypeReference;
.source "ChargeRecordEngin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/engin/ChargeRecordEngin$2;->onSuccess(Lcom/game/sdk/net/entry/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/TypeReference",
        "<",
        "Lcom/game/sdk/domain/ResultInfo",
        "<",
        "Lcom/game/sdk/domain/ChargeRecordList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/engin/ChargeRecordEngin$2;


# direct methods
.method constructor <init>(Lcom/game/sdk/engin/ChargeRecordEngin$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/engin/ChargeRecordEngin$2$1;->this$1:Lcom/game/sdk/engin/ChargeRecordEngin$2;

    .line 79
    invoke-direct {p0}, Lcom/alibaba/fastjson/TypeReference;-><init>()V

    return-void
.end method
