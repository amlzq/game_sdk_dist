.class public Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/a/a/a/a/b;


# instance fields
.field private a:Lcom/a/a/a/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Bundle;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->j:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->k:Ljava/lang/Boolean;

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->l:I

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "appId"

    const-string v3, "appId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bargainorId"

    const-string v3, "bargainorId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nonce"

    const-string v3, "nonce"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tokenId"

    const-string v3, "tokenId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "signature"

    const-string v3, "signature"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/a/a/a/b/a/b;)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/a/a/a/b/b/b;

    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->k:Ljava/lang/Boolean;

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/b/b/b;

    iget v1, v0, Lcom/a/a/a/b/b/b;->v:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u624bQ\u9519\u8bef\u7801retCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/a/a/a/b/b/b;->v:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apiMark:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/a/a/a/b/b/b;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apiName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callbackUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->N:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " payTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serialNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->O:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalFee:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/a/a/b/b/b;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transactionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/a/a/a/b/b/b;->K:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    const-string v3, "PE005"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    const-string v3, "\u6e20\u9053\u4ea4\u6613\u5931\u8d25"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    goto/16 :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "00"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "02"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    const-string v3, "PE005"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    iget-object v3, p1, Lcom/a/a/a/b/a/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x65 -> :sswitch_2
        -0x64 -> :sswitch_2
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->requestWindowFeature(I)Z

    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "payVoucher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "payVoucher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "payVoucher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->d:Ljava/lang/String;

    const-string v0, "bargainorId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->e:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->f:Ljava/lang/String;

    const-string v0, "tokenId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->g:Ljava/lang/String;

    const-string v0, "signature"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/a/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/a/a/a/a/a;->a(Landroid/content/Intent;Lcom/a/a/a/a/b;)Z

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->c:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "respMsg"

    aget-object v2, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    invoke-interface {v0}, Lcom/a/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    const-string v1, "pay"

    invoke-interface {v0, v1}, Lcom/a/a/a/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    const-string v3, "PE007"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    const-string v3, "QQ\u5ba2\u6237\u7aef\u7248\u672c\u8fc7\u4f4e\u6216\u672a\u5b89\u88c5"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/a/a/a/b/b/a;

    invoke-direct {v0}, Lcom/a/a/a/b/b/a;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->i:Landroid/os/Bundle;

    const-string v2, "mhtOrderNo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->z:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qwallet"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->D:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->B:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/a/a/a/b/b/a;->F:J

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->I:Ljava/lang/String;

    const-string v1, "HMAC-SHA1"

    iput-object v1, v0, Lcom/a/a/a/b/b/a;->H:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/a/a/a/b/b/a;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    invoke-interface {v1, v0}, Lcom/a/a/a/a/a;->a(Lcom/a/a/a/b/a/a;)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->j:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    const-string v3, "PE003"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    const-string v3, "\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->a:Lcom/a/a/a/a/a;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/a/a/a/a/a;->a(Landroid/content/Intent;Lcom/a/a/a/a/b;)Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->l:I

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;

    invoke-direct {v2, p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
