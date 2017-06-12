.class Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;
.super Landroid/os/AsyncTask;
.source "ChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/PayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public chargeMoney:D

.field public md5signstr:Ljava/lang/String;

.field private pContext:Landroid/content/Context;

.field public payType:I

.field public payWay:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "payType"    # I
    .param p5, "payWay"    # Ljava/lang/String;
    .param p6, "chargeMoney"    # D
    .param p8, "md5signstr"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 573
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 569
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->chargeMoney:D

    .line 575
    iput-object p2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->pContext:Landroid/content/Context;

    .line 576
    iput-object p3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->userId:Ljava/lang/String;

    .line 577
    iput p4, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payType:I

    .line 578
    iput-object p5, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    .line 579
    iput-wide p6, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->chargeMoney:D

    .line 580
    iput-object p8, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->md5signstr:Ljava/lang/String;

    .line 581
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    new-instance v1, Lcom/game/sdk/engin/ChargeEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->pContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->userId:Ljava/lang/String;

    iget v4, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payType:I

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    iget-wide v6, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->chargeMoney:D

    iget-object v8, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->md5signstr:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/game/sdk/engin/ChargeEngin;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeEngin;)V

    .line 591
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeActivity;->access$6(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/ChargeEngin;->pay()Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/PayInfo;)V
    .locals 6
    .param p1, "result"    # Lcom/game/sdk/domain/PayInfo;

    .prologue
    .line 596
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 597
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 598
    if-eqz p1, :cond_2

    .line 599
    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u83b7\u53d6\u6210\u529f----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->orderSn:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/ui/ChargeActivity;->access$7(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 601
    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    if-eqz v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    const-string v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v4, v4, Lcom/game/sdk/domain/PayParams;->email:Ljava/lang/String;

    iget-object v5, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v5, v5, Lcom/game/sdk/domain/PayParams;->privatekey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/game/sdk/ui/ChargeActivity;->payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    const-string v3, "wxpay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$8(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;
    invoke-static {v3}, Lcom/game/sdk/ui/ChargeActivity;->access$9(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 611
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$8(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 612
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$8(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->starttime:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 614
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$8(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$10(Ljava/lang/String;)V

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/ui/ChargeActivity;->access$11()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mhtSignature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->rsmd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mhtSignType=MD5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "mhtSignature":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$12(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-virtual {v2, v3}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Ljava/lang/String;)V

    .line 618
    const-string v2, "1"

    sput-object v2, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 619
    .restart local v1    # "mhtSignature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 625
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_2
    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u83b7\u53d6\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->onPostExecute(Lcom/game/sdk/domain/PayInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 586
    return-void
.end method
