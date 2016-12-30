.class Lcom/game/sdk/ui/InitActivity$1;
.super Ljava/lang/Object;
.source "InitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/InitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/InitActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/InitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/InitActivity$1;->this$0:Lcom/game/sdk/ui/InitActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$1;->this$0:Lcom/game/sdk/ui/InitActivity;

    # getter for: Lcom/game/sdk/ui/InitActivity;->view:Lcom/game/sdk/view/LVEatBeans;
    invoke-static {v1}, Lcom/game/sdk/ui/InitActivity;->access$2(Lcom/game/sdk/ui/InitActivity;)Lcom/game/sdk/view/LVEatBeans;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/view/LVEatBeans;->stopAnim()V

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$1;->this$0:Lcom/game/sdk/ui/InitActivity;

    const-class v2, Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$1;->this$0:Lcom/game/sdk/ui/InitActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/InitActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
