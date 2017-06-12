.class Lcom/game/sdk/TTWSDKActivity$2;
.super Ljava/lang/Object;
.source "TTWSDKActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/TTWSDKActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/TTWSDKActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/TTWSDKActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/TTWSDKActivity$2;->this$0:Lcom/game/sdk/TTWSDKActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "\u5207\u6362\u8d26\u53f7\u56de\u8c03--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 73
    return-void
.end method
