.class Lcom/game/sdk/ui/GamePackageActivity$1;
.super Landroid/os/Handler;
.source "GamePackageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/GamePackageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageActivity;->adapter:Lcom/game/sdk/adapter/GamePackageAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageActivity;->access$2(Lcom/game/sdk/ui/GamePackageActivity;)Lcom/game/sdk/adapter/GamePackageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/GamePackageAdapter;->addNewList(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageActivity;->adapter:Lcom/game/sdk/adapter/GamePackageAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageActivity;->access$2(Lcom/game/sdk/ui/GamePackageActivity;)Lcom/game/sdk/adapter/GamePackageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/GamePackageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
