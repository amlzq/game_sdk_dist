.class Lcom/game/sdk/ui/InitActivity$2;
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
    iput-object p1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    # getter for: Lcom/game/sdk/ui/InitActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/InitActivity;->access$3(Lcom/game/sdk/ui/InitActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    # getter for: Lcom/game/sdk/ui/InitActivity;->DELYED:I
    invoke-static {v2}, Lcom/game/sdk/ui/InitActivity;->access$4(Lcom/game/sdk/ui/InitActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    iget v2, v1, Lcom/game/sdk/ui/InitActivity;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/game/sdk/ui/InitActivity;->i:I

    .line 111
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    iget v1, v1, Lcom/game/sdk/ui/InitActivity;->i:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    const-class v2, Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/InitActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/InitActivity$2;->this$0:Lcom/game/sdk/ui/InitActivity;

    iget v2, v2, Lcom/game/sdk/ui/InitActivity;->i:I

    # invokes: Lcom/game/sdk/ui/InitActivity;->setCurDot(I)V
    invoke-static {v1, v2}, Lcom/game/sdk/ui/InitActivity;->access$5(Lcom/game/sdk/ui/InitActivity;I)V

    .line 118
    return-void
.end method
