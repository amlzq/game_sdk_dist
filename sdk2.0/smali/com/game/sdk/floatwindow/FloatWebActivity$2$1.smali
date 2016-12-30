.class Lcom/game/sdk/floatwindow/FloatWebActivity$2$1;
.super Ljava/lang/Object;
.source "FloatWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/floatwindow/FloatWebActivity$2;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/floatwindow/FloatWebActivity$2;


# direct methods
.method constructor <init>(Lcom/game/sdk/floatwindow/FloatWebActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$2$1;->this$1:Lcom/game/sdk/floatwindow/FloatWebActivity$2;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$2$1;->this$1:Lcom/game/sdk/floatwindow/FloatWebActivity$2;

    # getter for: Lcom/game/sdk/floatwindow/FloatWebActivity$2;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;
    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatWebActivity$2;->access$0(Lcom/game/sdk/floatwindow/FloatWebActivity$2;)Lcom/game/sdk/floatwindow/FloatWebActivity;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u7f51\u9875\u6b63\u5728\u52a0\u8f7d..."

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/DialogUtil;->showDialog(Landroid/content/Context;ZLjava/lang/String;)V

    .line 104
    return-void
.end method
