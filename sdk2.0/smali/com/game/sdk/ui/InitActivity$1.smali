.class Lcom/game/sdk/ui/InitActivity$1;
.super Ljava/lang/Object;
.source "InitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/InitActivity;->initData()V
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
    iput-object p1, p0, Lcom/game/sdk/ui/InitActivity$1;->this$0:Lcom/game/sdk/ui/InitActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity$1;->this$0:Lcom/game/sdk/ui/InitActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/InitActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->init()V

    .line 97
    return-void
.end method
