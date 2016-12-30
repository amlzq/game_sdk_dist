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
    .line 315
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 314
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->chargeMoney:D

    .line 316
    iput-object p2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->pContext:Landroid/content/Context;

    .line 317
    iput-object p3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->userId:Ljava/lang/String;

    .line 318
    iput p4, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payType:I

    .line 319
    iput-object p5, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    .line 320
    iput-wide p6, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->chargeMoney:D

    .line 321
    iput-object p8, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->md5signstr:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    new-instance v1, Lcom/game/sdk/engin/ChargeEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->pContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->userId:Ljava/lang/String;

    iget v4, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payType:I

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    iget-wide v6, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->chargeMoney:D

    iget-object v8, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->md5signstr:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/game/sdk/engin/ChargeEngin;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/ChargeActivity;->access$2(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeEngin;)V

    .line 332
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeActivity;->access$3(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeEngin;

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
    .line 337
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 338
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 339
    if-eqz p1, :cond_2

    .line 340
    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u83b7\u53d6\u6210\u529f----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->orderSn:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/ui/ChargeActivity;->access$4(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 342
    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    const-string v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v4, v4, Lcom/game/sdk/domain/PayParams;->email:Ljava/lang/String;

    iget-object v5, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v5, v5, Lcom/game/sdk/domain/PayParams;->privatekey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/game/sdk/ui/ChargeActivity;->payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->payWay:Ljava/lang/String;

    const-string v3, "wxpay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;
    invoke-static {v3}, Lcom/game/sdk/ui/ChargeActivity;->access$6(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 353
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->starttime:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$7(Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/ui/ChargeActivity;->access$8()Ljava/lang/String;

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

    .line 358
    .local v1, "mhtSignature":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$9(Landroid/app/ProgressDialog;)V

    .line 359
    # getter for: Lcom/game/sdk/ui/ChargeActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/ChargeActivity;->access$10()Landroid/app/ProgressDialog;

    move-result-object v2

    const-string v3, "\u652f\u4ed8\u73af\u5883\u626b\u63cf\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 360
    # getter for: Lcom/game/sdk/ui/ChargeActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/ChargeActivity;->access$10()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 362
    # getter for: Lcom/game/sdk/ui/ChargeActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/ChargeActivity;->access$10()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    # getter for: Lcom/game/sdk/ui/ChargeActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/game/sdk/ui/ChargeActivity;->access$10()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setPayLoading(Landroid/app/ProgressDialog;)V

    .line 364
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 366
    const-string v2, "1"

    sput-object v2, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 368
    .restart local v1    # "mhtSignature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 374
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
    .line 326
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 327
    return-void
.end method
