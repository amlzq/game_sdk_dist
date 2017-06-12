.class Lcom/game/sdk/TTWSDKActivity$1;
.super Ljava/lang/Object;
.source "TTWSDKActivity.java"

# interfaces
.implements Lcom/game/sdk/OnSDKInitListener;


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
    iput-object p1, p0, Lcom/game/sdk/TTWSDKActivity$1;->this$0:Lcom/game/sdk/TTWSDKActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailure()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public initSuccess()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5904\u7406\u540e\u7684\u7ed3\u679c\u503c------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 59
    return-void
.end method
