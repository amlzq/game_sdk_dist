.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;
.super Landroid/os/Handler;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    .line 538
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 541
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 546
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 547
    return-void

    .line 543
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$0(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
