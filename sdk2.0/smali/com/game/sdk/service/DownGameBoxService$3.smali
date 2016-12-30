.class Lcom/game/sdk/service/DownGameBoxService$3;
.super Ljava/lang/Object;
.source "DownGameBoxService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/service/DownGameBoxService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/service/DownGameBoxService;


# direct methods
.method constructor <init>(Lcom/game/sdk/service/DownGameBoxService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/service/DownGameBoxService$3;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/game/sdk/service/DownGameBoxService$3;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    const-string v1, "\u4e0b\u8f7d\u5730\u5740\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    return-void
.end method
