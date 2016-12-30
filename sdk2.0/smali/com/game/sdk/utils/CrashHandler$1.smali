.class Lcom/game/sdk/utils/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/utils/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/utils/CrashHandler;


# direct methods
.method constructor <init>(Lcom/game/sdk/utils/CrashHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/CrashHandler$1;->this$0:Lcom/game/sdk/utils/CrashHandler;

    .line 142
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 146
    iget-object v0, p0, Lcom/game/sdk/utils/CrashHandler$1;->this$0:Lcom/game/sdk/utils/CrashHandler;

    # getter for: Lcom/game/sdk/utils/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/game/sdk/utils/CrashHandler;->access$0(Lcom/game/sdk/utils/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u7a0b\u5e8f\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 148
    return-void
.end method
