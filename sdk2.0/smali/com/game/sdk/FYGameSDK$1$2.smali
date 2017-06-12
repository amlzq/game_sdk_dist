.class Lcom/game/sdk/FYGameSDK$1$2;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/FYGameSDK$1;


# direct methods
.method constructor <init>(Lcom/game/sdk/FYGameSDK$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$1$2;->this$1:Lcom/game/sdk/FYGameSDK$1;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$2;->this$1:Lcom/game/sdk/FYGameSDK$1;

    # getter for: Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;
    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    # getter for: Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;
    invoke-static {v0}, Lcom/game/sdk/FYGameSDK;->access$2(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/FYGameSDK$InitCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/FYGameSDK$InitCloseListener;->initClose()V

    .line 159
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$2;->this$1:Lcom/game/sdk/FYGameSDK$1;

    # getter for: Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;
    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/FYGameSDK;->access$3(Lcom/game/sdk/FYGameSDK;Z)V

    .line 160
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$2;->this$1:Lcom/game/sdk/FYGameSDK$1;

    # getter for: Lcom/game/sdk/FYGameSDK$1;->this$0:Lcom/game/sdk/FYGameSDK;
    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/game/sdk/FYGameSDK;->initCallback:Lcom/game/sdk/OnSDKInitListener;

    invoke-interface {v0}, Lcom/game/sdk/OnSDKInitListener;->initFailure()V

    .line 161
    return-void
.end method
