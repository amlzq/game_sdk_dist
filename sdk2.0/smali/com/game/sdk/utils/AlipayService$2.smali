.class Lcom/game/sdk/utils/AlipayService$2;
.super Ljava/lang/Object;
.source "AlipayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/utils/AlipayService;->payTask(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/utils/AlipayService;

.field private final synthetic val$orderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/utils/AlipayService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/AlipayService$2;->this$0:Lcom/game/sdk/utils/AlipayService;

    iput-object p2, p0, Lcom/game/sdk/utils/AlipayService$2;->val$orderInfo:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/game/sdk/utils/AlipayService$2;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/game/sdk/utils/AlipayService;->access$2(Lcom/game/sdk/utils/AlipayService;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 93
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    iget-object v3, p0, Lcom/game/sdk/utils/AlipayService$2;->val$orderInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->what:I

    .line 97
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v3, p0, Lcom/game/sdk/utils/AlipayService$2;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/game/sdk/utils/AlipayService;->access$3(Lcom/game/sdk/utils/AlipayService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method
