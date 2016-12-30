.class Lcom/game/sdk/utils/AlipayService$1;
.super Landroid/os/Handler;
.source "AlipayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/utils/AlipayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/utils/AlipayService;


# direct methods
.method constructor <init>(Lcom/game/sdk/utils/AlipayService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/AlipayService$1;->this$0:Lcom/game/sdk/utils/AlipayService;

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 34
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "result_obj":[Ljava/lang/String;
    aget-object v4, v3, v8

    .line 38
    aget-object v5, v3, v8

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 39
    aget-object v6, v3, v8

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 37
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, "resultStatus":I
    aget-object v4, v3, v9

    .line 41
    aget-object v5, v3, v9

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 42
    aget-object v6, v3, v9

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 40
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "memo":Ljava/lang/String;
    const/16 v4, 0x2328

    if-ne v2, v4, :cond_1

    .line 46
    iget-object v4, p0, Lcom/game/sdk/utils/AlipayService$1;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->chargerListener:Lcom/game/sdk/domain/OnChargerListener;
    invoke-static {v4}, Lcom/game/sdk/utils/AlipayService;->access$0(Lcom/game/sdk/utils/AlipayService;)Lcom/game/sdk/domain/OnChargerListener;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/utils/AlipayService$1;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->charger_money:Ljava/lang/Double;
    invoke-static {v5}, Lcom/game/sdk/utils/AlipayService;->access$1(Lcom/game/sdk/utils/AlipayService;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/game/sdk/domain/OnChargerListener;->chargerSuccess(D)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/utils/AlipayService$1;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/game/sdk/utils/AlipayService;->access$2(Lcom/game/sdk/utils/AlipayService;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u652f\u4ed8\u5931\u8d25"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 50
    iget-object v4, p0, Lcom/game/sdk/utils/AlipayService$1;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->chargerListener:Lcom/game/sdk/domain/OnChargerListener;
    invoke-static {v4}, Lcom/game/sdk/utils/AlipayService;->access$0(Lcom/game/sdk/utils/AlipayService;)Lcom/game/sdk/domain/OnChargerListener;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/game/sdk/utils/AlipayService$1;->this$0:Lcom/game/sdk/utils/AlipayService;

    # getter for: Lcom/game/sdk/utils/AlipayService;->charger_money:Ljava/lang/Double;
    invoke-static {v6}, Lcom/game/sdk/utils/AlipayService;->access$1(Lcom/game/sdk/utils/AlipayService;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/game/sdk/domain/OnChargerListener;->chargerFail(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
