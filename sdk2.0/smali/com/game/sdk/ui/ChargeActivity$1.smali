.class Lcom/game/sdk/ui/ChargeActivity$1;
.super Landroid/os/Handler;
.source "ChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 102
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

    .line 104
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "result_obj":[Ljava/lang/String;
    aget-object v4, v3, v8

    aget-object v5, v3, v8

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v3, v8

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, "resultStatus":I
    aget-object v4, v3, v9

    aget-object v5, v3, v9

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v3, v9

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "memo":Ljava/lang/String;
    const/16 v4, 0x2328

    if-ne v2, v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v9, v4, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 119
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v5, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-virtual {v4}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 135
    .end local v0    # "memo":Ljava/lang/String;
    .end local v2    # "resultStatus":I
    .end local v3    # "result_obj":[Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v0    # "memo":Ljava/lang/String;
    .restart local v2    # "resultStatus":I
    .restart local v3    # "result_obj":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v8, v4, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 127
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v4, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v0    # "memo":Ljava/lang/String;
    .end local v2    # "resultStatus":I
    .end local v3    # "result_obj":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v8, v4, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 132
    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v5, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
