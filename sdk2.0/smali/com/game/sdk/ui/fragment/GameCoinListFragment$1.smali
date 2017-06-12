.class Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;
.super Landroid/os/Handler;
.source "GameCoinListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/GameCoinListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/GameCoinListFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;->this$0:Lcom/game/sdk/ui/fragment/GameCoinListFragment;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;->this$0:Lcom/game/sdk/ui/fragment/GameCoinListFragment;

    # getter for: Lcom/game/sdk/ui/fragment/GameCoinListFragment;->adapter:Lcom/game/sdk/adapter/GameCoinAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->access$0(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)Lcom/game/sdk/adapter/GameCoinAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;->this$0:Lcom/game/sdk/ui/fragment/GameCoinListFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->gameCoinList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/GameCoinAdapter;->addNewList(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GameCoinListFragment$1;->this$0:Lcom/game/sdk/ui/fragment/GameCoinListFragment;

    # getter for: Lcom/game/sdk/ui/fragment/GameCoinListFragment;->adapter:Lcom/game/sdk/adapter/GameCoinAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;->access$0(Lcom/game/sdk/ui/fragment/GameCoinListFragment;)Lcom/game/sdk/adapter/GameCoinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/GameCoinAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
