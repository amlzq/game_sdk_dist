.class Lcom/game/sdk/FYGameSDK$2;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK;->reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/FYGameSDK;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$isShowQuikLogin:Z

.field private final synthetic val$loginlistener:Lcom/game/sdk/domain/OnLoginListener;

.field private final synthetic val$reinitDialog:Lcom/game/sdk/view/CustomDialog;


# direct methods
.method constructor <init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    iput-object p2, p0, Lcom/game/sdk/FYGameSDK$2;->val$reinitDialog:Lcom/game/sdk/view/CustomDialog;

    iput-object p3, p0, Lcom/game/sdk/FYGameSDK$2;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/game/sdk/FYGameSDK$2;->val$isShowQuikLogin:Z

    iput-object p5, p0, Lcom/game/sdk/FYGameSDK$2;->val$loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/FYGameSDK$2;)Lcom/game/sdk/FYGameSDK;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 183
    new-instance v0, Lcom/game/sdk/engin/InitEngin;

    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/game/sdk/engin/InitEngin;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "initEngin":Lcom/game/sdk/engin/InitEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/InitEngin;->run()Z

    move-result v1

    .line 187
    .local v1, "result":Z
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->val$reinitDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 189
    if-eqz v1, :cond_2

    .line 190
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/game/sdk/FYGameSDK;->access$3(Lcom/game/sdk/FYGameSDK;Z)V

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->isInitOk:Z
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$4(Lcom/game/sdk/FYGameSDK;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/FYGameSDK$2$1;

    iget-object v4, p0, Lcom/game/sdk/FYGameSDK$2;->val$context:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/game/sdk/FYGameSDK$2;->val$isShowQuikLogin:Z

    iget-object v6, p0, Lcom/game/sdk/FYGameSDK$2;->val$loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/game/sdk/FYGameSDK$2$1;-><init>(Lcom/game/sdk/FYGameSDK$2;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/game/sdk/FYGameSDK;->access$3(Lcom/game/sdk/FYGameSDK;Z)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;

    # getter for: Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u91cd\u65b0\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
