.class Lcom/game/sdk/ui/ChargeActivity$3;
.super Ljava/lang/Object;
.source "ChargeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/ChargeActivity;->payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;

.field private final synthetic val$orderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$3;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-object p2, p0, Lcom/game/sdk/ui/ChargeActivity$3;->val$orderInfo:Ljava/lang/String;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 650
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$3;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 652
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$3;->val$orderInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 655
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 656
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$3;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/game/sdk/ui/ChargeActivity;->access$4(Lcom/game/sdk/ui/ChargeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return-void
.end method
