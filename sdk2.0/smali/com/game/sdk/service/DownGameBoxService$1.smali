.class Lcom/game/sdk/service/DownGameBoxService$1;
.super Landroid/os/Handler;
.source "DownGameBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/service/DownGameBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/service/DownGameBoxService;


# direct methods
.method constructor <init>(Lcom/game/sdk/service/DownGameBoxService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/service/DownGameBoxService$1;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    # getter for: Lcom/game/sdk/service/DownGameBoxService;->hasStop:Z
    invoke-static {}, Lcom/game/sdk/service/DownGameBoxService;->access$0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/game/sdk/service/DownGameBoxService$1;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    iget-object v1, p0, Lcom/game/sdk/service/DownGameBoxService$1;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    # getter for: Lcom/game/sdk/service/DownGameBoxService;->progress:I
    invoke-static {v1}, Lcom/game/sdk/service/DownGameBoxService;->access$1(Lcom/game/sdk/service/DownGameBoxService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/service/DownGameBoxService;->setNotify(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/game/sdk/service/DownGameBoxService$1;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    iget v1, v1, Lcom/game/sdk/service/DownGameBoxService;->MSG_STOP_SEVICE:I

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/game/sdk/service/DownGameBoxService$1;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    invoke-virtual {v0}, Lcom/game/sdk/service/DownGameBoxService;->stopSelf()V

    goto :goto_0
.end method
