.class Lcom/game/sdk/FYGameSDK$2$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/FYGameSDK$2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$isShowQuikLogin:Z

.field private final synthetic val$loginlistener:Lcom/game/sdk/domain/OnLoginListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/FYGameSDK$2;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$2$1;->this$1:Lcom/game/sdk/FYGameSDK$2;

    iput-object p2, p0, Lcom/game/sdk/FYGameSDK$2$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/game/sdk/FYGameSDK$2$1;->val$isShowQuikLogin:Z

    iput-object p4, p0, Lcom/game/sdk/FYGameSDK$2$1;->val$loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$2$1;->this$1:Lcom/game/sdk/FYGameSDK$2;

    # getter for: Lcom/game/sdk/FYGameSDK$2;->this$0:Lcom/game/sdk/FYGameSDK;
    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$2;->access$0(Lcom/game/sdk/FYGameSDK$2;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK$2$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/game/sdk/FYGameSDK$2$1;->val$isShowQuikLogin:Z

    iget-object v3, p0, Lcom/game/sdk/FYGameSDK$2$1;->val$loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/FYGameSDK;->login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    .line 201
    return-void
.end method
