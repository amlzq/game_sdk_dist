.class Lcom/game/sdk/ui/fragment/CompAignFragment$1;
.super Landroid/os/Handler;
.source "CompAignFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/CompAignFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/CompAignFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->adapter:Lcom/game/sdk/adapter/CompAignAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/adapter/CompAignAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/CompAignAdapter;->addNewList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->adapter:Lcom/game/sdk/adapter/CompAignAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/adapter/CompAignAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/CompAignAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
