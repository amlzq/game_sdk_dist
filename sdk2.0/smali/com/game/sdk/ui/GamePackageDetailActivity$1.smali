.class Lcom/game/sdk/ui/GamePackageDetailActivity$1;
.super Landroid/os/Handler;
.source "GamePackageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/GamePackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$2(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->addNewList(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$2(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
