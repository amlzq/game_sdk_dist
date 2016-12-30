.class Lcom/game/sdk/engin/UpdateAvaterEngin$1;
.super Ljava/lang/Object;
.source "UpdateAvaterEngin.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/engin/UpdateAvaterEngin;->updateUserAvater()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game/sdk/net/listeners/Callback",
        "<",
        "Lcom/game/sdk/domain/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/engin/UpdateAvaterEngin;


# direct methods
.method constructor <init>(Lcom/game/sdk/engin/UpdateAvaterEngin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/engin/UpdateAvaterEngin$1;->this$0:Lcom/game/sdk/engin/UpdateAvaterEngin;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 80
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 73
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UpdateInfo;->face:Ljava/lang/String;

    iput-object v0, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method
