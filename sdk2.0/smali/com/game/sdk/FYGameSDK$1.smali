.class Lcom/game/sdk/FYGameSDK$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/FYGameSDK;


# direct methods
.method constructor <init>(Lcom/game/sdk/FYGameSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    # invokes: Lcom/game/sdk/FYGameSDK;->preInit()V
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)V

    .line 90
    new-instance v0, Lcom/game/sdk/engin/InitEngin;

    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/game/sdk/engin/InitEngin;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "initEngin":Lcom/game/sdk/engin/InitEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/InitEngin;->run()Z

    move-result v1

    .line 94
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fy game sdk acontext ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fy game sdk result---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 98
    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/FYGameSDK$1$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/FYGameSDK$1$1;-><init>(Lcom/game/sdk/FYGameSDK$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/FYGameSDK$1$2;

    invoke-direct {v3, p0}, Lcom/game/sdk/FYGameSDK$1$2;-><init>(Lcom/game/sdk/FYGameSDK$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
