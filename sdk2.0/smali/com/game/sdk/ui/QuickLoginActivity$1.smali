.class Lcom/game/sdk/ui/QuickLoginActivity$1;
.super Ljava/lang/Object;
.source "QuickLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/QuickLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/QuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    # getter for: Lcom/game/sdk/ui/QuickLoginActivity;->timeNumber:I
    invoke-static {v1}, Lcom/game/sdk/ui/QuickLoginActivity;->access$2(Lcom/game/sdk/ui/QuickLoginActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 250
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    # getter for: Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z
    invoke-static {v1}, Lcom/game/sdk/ui/QuickLoginActivity;->access$3(Lcom/game/sdk/ui/QuickLoginActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    # getter for: Lcom/game/sdk/ui/QuickLoginActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/QuickLoginActivity;->access$4(Lcom/game/sdk/ui/QuickLoginActivity;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/game/sdk/ui/QuickLoginActivity;->SEND_TIME:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    # getter for: Lcom/game/sdk/ui/QuickLoginActivity;->timeNumber:I
    invoke-static {v1}, Lcom/game/sdk/ui/QuickLoginActivity;->access$2(Lcom/game/sdk/ui/QuickLoginActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->access$5(Lcom/game/sdk/ui/QuickLoginActivity;I)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    # getter for: Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z
    invoke-static {v1}, Lcom/game/sdk/ui/QuickLoginActivity;->access$3(Lcom/game/sdk/ui/QuickLoginActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v1}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "runnable---error"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method
