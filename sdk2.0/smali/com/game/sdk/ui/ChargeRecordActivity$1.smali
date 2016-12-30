.class Lcom/game/sdk/ui/ChargeRecordActivity$1;
.super Landroid/os/Handler;
.source "ChargeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeRecordActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    # getter for: Lcom/game/sdk/ui/ChargeRecordActivity;->adapter:Lcom/game/sdk/adapter/ChargeRecordAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->access$2(Lcom/game/sdk/ui/ChargeRecordActivity;)Lcom/game/sdk/adapter/ChargeRecordAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/ChargeRecordAdapter;->addNewList(Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    # getter for: Lcom/game/sdk/ui/ChargeRecordActivity;->adapter:Lcom/game/sdk/adapter/ChargeRecordAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->access$2(Lcom/game/sdk/ui/ChargeRecordActivity;)Lcom/game/sdk/adapter/ChargeRecordAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ChargeRecordAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
