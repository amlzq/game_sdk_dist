.class Lcom/game/sdk/ui/PayActivity$PayGameTask;
.super Landroid/os/AsyncTask;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayGameTask"
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
.field public payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V
    .locals 0
    .param p2, "params"    # Lcom/game/sdk/domain/PayRequestParams;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    .line 552
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    new-instance v1, Lcom/game/sdk/engin/ChargeEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/ChargeEngin;-><init>(Landroid/content/Context;Lcom/game/sdk/domain/PayRequestParams;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/PayActivity;->access$5(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/ChargeEngin;)V

    .line 562
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$6(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/ChargeEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/ChargeEngin;->payGame()Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/PayInfo;)V
    .locals 6
    .param p1, "result"    # Lcom/game/sdk/domain/PayInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 568
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 570
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/PayResultDialog;->show()V

    .line 572
    if-eqz p1, :cond_4

    iget v2, p1, Lcom/game/sdk/domain/PayInfo;->code:I

    if-ne v2, v4, :cond_4

    .line 573
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->orderSn:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/game/sdk/ui/PayActivity;->access$7(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V

    .line 574
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->rmb_money:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->rmb_money:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :goto_0
    invoke-static {v4, v2}, Lcom/game/sdk/ui/PayActivity;->access$8(Lcom/game/sdk/ui/PayActivity;F)V

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u652f\u4ed8\u7684\u91d1\u989d---"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 578
    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 580
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$9(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v4, v4, Lcom/game/sdk/domain/PayParams;->email:Ljava/lang/String;

    iget-object v5, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v5, v5, Lcom/game/sdk/domain/PayParams;->privatekey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/game/sdk/ui/PayActivity;->payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$9(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wxpay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$10(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 589
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$10(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 590
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$10(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->starttime:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 592
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$10(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$12(Ljava/lang/String;)V

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    # getter for: Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/ui/PayActivity;->access$13()Ljava/lang/String;

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

    .line 595
    .local v1, "mhtSignature":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$14(Landroid/app/ProgressDialog;)V

    .line 596
    # getter for: Lcom/game/sdk/ui/PayActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/PayActivity;->access$15()Landroid/app/ProgressDialog;

    move-result-object v2

    const-string v3, "\u652f\u4ed8\u73af\u5883\u626b\u63cf\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 597
    # getter for: Lcom/game/sdk/ui/PayActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/PayActivity;->access$15()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 599
    # getter for: Lcom/game/sdk/ui/PayActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/PayActivity;->access$15()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 600
    # getter for: Lcom/game/sdk/ui/PayActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/PayActivity;->access$15()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setPayLoading(Landroid/app/ProgressDialog;)V

    .line 601
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 603
    const-string v2, "1"

    sput-object v2, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 574
    goto/16 :goto_0

    .line 605
    .restart local v1    # "mhtSignature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 610
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->onPostExecute(Lcom/game/sdk/domain/PayInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 556
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 557
    return-void
.end method
