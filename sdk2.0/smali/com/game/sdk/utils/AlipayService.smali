.class public Lcom/game/sdk/utils/AlipayService;
.super Ljava/lang/Object;
.source "AlipayService.java"


# static fields
.field private static final ALIPAY_BACK:I = 0xa


# instance fields
.field private activity:Landroid/app/Activity;

.field private chargerListener:Lcom/game/sdk/domain/OnChargerListener;

.field private charger_money:Ljava/lang/Double;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/game/sdk/utils/AlipayService$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/utils/AlipayService$1;-><init>(Lcom/game/sdk/utils/AlipayService;)V

    iput-object v0, p0, Lcom/game/sdk/utils/AlipayService;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/utils/AlipayService;)Lcom/game/sdk/domain/OnChargerListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/game/sdk/utils/AlipayService;->chargerListener:Lcom/game/sdk/domain/OnChargerListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/utils/AlipayService;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/game/sdk/utils/AlipayService;->charger_money:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/utils/AlipayService;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/game/sdk/utils/AlipayService;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/utils/AlipayService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/game/sdk/utils/AlipayService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
    .locals 3
    .param p1, "productname"    # Ljava/lang/String;
    .param p2, "productdesc"    # Ljava/lang/String;
    .param p3, "charge_money"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "partner=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "2088421615172944"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\"&out_trade_no=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p0}, Lcom/game/sdk/utils/AlipayService;->getOutTradeNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "\"&subject=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "\"&body=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\"&total_fee=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\"&notify_url=\"www.baidu.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "http://sdk.289.com/Api/notify_url/Alipay"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\"&payment_type=\"1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\"&seller_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "844931166@qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method private getOutTradeNo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 150
    .local v2, "timestamp":J
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 151
    .local v0, "random":Ljava/util/Random;
    const/16 v4, 0x270f

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x2328

    add-int/lit16 v1, v4, 0x3e8

    .line 152
    .local v1, "s":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "251"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private payTask(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p1, "productname"    # Ljava/lang/String;
    .param p2, "productdesc"    # Ljava/lang/String;
    .param p3, "charge_money"    # D

    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game/sdk/utils/AlipayService;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "info":Ljava/lang/String;
    const-string v4, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAMA2qSWoVhjGPOi9NlkppNvTUM6zzzz2WHF3qgpMP5Nz8S49Q6LuW5uKZq5vExxdO0c5mi5oi6K1ZS5bSSmdbjNysYXhVV7rYxIemX9O4Sd6IpvTvlq9XcMeQMr0TAHLQ3zYayETSDFADycSlG2mW7CTqEwch6TbWDjXIKBF8C4nAgMBAAECgYEAjvbY/npjd0/TM+SwDMdtqFdXTjbtWFF+XP79SWWHD/x3kcXdjc0t89WQJAPXugwaMBLG++eknGPBGyaolzxSHsVZVmbD2Brj6W7Hp21vq0i63xjrQKlxz+WQCixK7UDKg2E1Z5yfahQucOApHR08dRSWopwaErqjZXWY3fTperkCQQDtijRKLOvnpjheMopVhbi4xuAVT+3t8WvqJEMszgaKk/eZCPbbiBiTKI85ogs8BltLGqxSsotS+Pm94K4GtRodAkEAzyazR28fq2rxBiVZn+277Ggc4fVEinbdDgPb1TmgSumCnNXibNylmCiZBUxqOm2wfdWddpZk1bcHt90SlWfWEwJBALMBAhSfs4qWxUWfGoYGRkTggb8tw6Qa2XLRrtmVzHIjvWNS0Qxwi+xhlUUeKw8pzyRSzmdnavy06SbAqQQe97UCQE0pgUZuokFcCIPdjdEA4StibL/OeMWLGTSLQ2vdl1PQP5LkKP+cASL4nGdY24kAKun0lD8ELnNdRka61p1InHkCQQDTm6w2f9cJdJ6hcRT/4hwpS4Ra76o1ZrK6hg84RHuiNDP9jM8mPRVVPweeCImL09D83G/4siHG5wGEaUIT7NS6"

    invoke-static {v1, v4}, Lcom/game/sdk/utils/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&sign=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/game/sdk/utils/AlipayService;->getSignType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v4, "ExternalPartner"

    const-string v5, "start pay"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 86
    move-object v2, v1

    .line 87
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/utils/AlipayService$2;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/utils/AlipayService$2;-><init>(Lcom/game/sdk/utils/AlipayService;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    iget-object v4, p0, Lcom/game/sdk/utils/AlipayService;->activity:Landroid/app/Activity;

    const-string v5, "\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;DLcom/game/sdk/domain/OnChargerListener;)V
    .locals 2
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "productname"    # Ljava/lang/String;
    .param p3, "productdesc"    # Ljava/lang/String;
    .param p4, "charge_money"    # D
    .param p6, "chargerListener"    # Lcom/game/sdk/domain/OnChargerListener;

    .prologue
    .line 64
    iput-object p6, p0, Lcom/game/sdk/utils/AlipayService;->chargerListener:Lcom/game/sdk/domain/OnChargerListener;

    .line 65
    iput-object p1, p0, Lcom/game/sdk/utils/AlipayService;->activity:Landroid/app/Activity;

    .line 66
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/utils/AlipayService;->charger_money:Ljava/lang/Double;

    .line 67
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/game/sdk/utils/AlipayService;->payTask(Ljava/lang/String;Ljava/lang/String;D)V

    .line 68
    return-void
.end method
