.class Lcom/game/sdk/engin/BaseEngin$3$1;
.super Lcom/alibaba/fastjson/TypeReference;
.source "BaseEngin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/engin/BaseEngin$3;->onSuccess(Lcom/game/sdk/net/entry/Response;)V
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/engin/BaseEngin$3;


# direct methods
.method varargs constructor <init>(Lcom/game/sdk/engin/BaseEngin$3;[Ljava/lang/reflect/Type;)V
    .locals 0
    .param p2, "$anonymous0"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/engin/BaseEngin$3$1;->this$1:Lcom/game/sdk/engin/BaseEngin$3;

    .line 93
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/TypeReference;-><init>([Ljava/lang/reflect/Type;)V

    return-void
.end method
