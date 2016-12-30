.class Lcom/game/sdk/TTWSDKActivity$4;
.super Ljava/lang/Object;
.source "TTWSDKActivity.java"

# interfaces
.implements Lcom/game/sdk/domain/OnPaymentListener;


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
    iput-object p1, p0, Lcom/game/sdk/TTWSDKActivity$4;->this$0:Lcom/game/sdk/TTWSDKActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V
    .locals 3
    .param p1, "errorMsg"    # Lcom/game/sdk/domain/PaymentErrorMsg;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$4;->this$0:Lcom/game/sdk/TTWSDKActivity;

    invoke-virtual {v0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5145\u503c\u5931\u8d25\uff1acode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ErrorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string v2, "  \u9884\u5145\u503c\u7684\u91d1\u989d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 143
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    return-void
.end method

.method public paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V
    .locals 3
    .param p1, "callbackInfo"    # Lcom/game/sdk/domain/PaymentCallbackInfo;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$4;->this$0:Lcom/game/sdk/TTWSDKActivity;

    invoke-virtual {v0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5145\u503c\u91d1\u989d\u6570\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6d88\u606f\u63d0\u793a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 135
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
