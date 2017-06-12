.class Lcom/game/sdk/FYGameSDK$3;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK;->login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
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
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$3;->this$0:Lcom/game/sdk/FYGameSDK;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Lcom/game/sdk/FYGameSDK$LoginTask;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK$3;->this$0:Lcom/game/sdk/FYGameSDK;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/FYGameSDK$LoginTask;-><init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/FYGameSDK$LoginTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/FYGameSDK$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    return-void
.end method
