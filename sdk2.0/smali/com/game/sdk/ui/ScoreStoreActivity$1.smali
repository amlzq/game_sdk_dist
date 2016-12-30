.class Lcom/game/sdk/ui/ScoreStoreActivity$1;
.super Landroid/os/Handler;
.source "ScoreStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ScoreStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ScoreStoreActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ScoreStoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$2(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->addNewList(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$2(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
