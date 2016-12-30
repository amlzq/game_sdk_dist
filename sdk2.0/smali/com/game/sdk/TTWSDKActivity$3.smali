.class Lcom/game/sdk/TTWSDKActivity$3;
.super Ljava/lang/Object;
.source "TTWSDKActivity.java"

# interfaces
.implements Lcom/game/sdk/domain/OnLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/TTWSDKActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/game/sdk/TTWSDKActivity$3;->this$0:Lcom/game/sdk/TTWSDKActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V
    .locals 2
    .param p1, "errorMsg"    # Lcom/game/sdk/domain/LoginErrorMsg;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$3;->this$0:Lcom/game/sdk/TTWSDKActivity;

    const-string v1, "\u767b\u5f55\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V
    .locals 2
    .param p1, "logincallback"    # Lcom/game/sdk/domain/LogincallBack;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$3;->this$0:Lcom/game/sdk/TTWSDKActivity;

    const-string v1, "\u767b\u5f55\u6210\u529f"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$3;->this$0:Lcom/game/sdk/TTWSDKActivity;

    iget-object v0, v0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->createFloatButton()V

    .line 112
    return-void
.end method
