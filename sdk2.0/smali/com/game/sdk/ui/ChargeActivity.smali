.class public Lcom/game/sdk/ui/ChargeActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "ChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;,
        Lcom/game/sdk/ui/ChargeActivity$PayInitTask;
    }
.end annotation


# static fields
.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;

.field private static preSignStr:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private alipayLayout:Landroid/widget/RelativeLayout;

.field private alipaySelectedIcon:Landroid/widget/ImageView;

.field private attach:Ljava/lang/String;

.field private backIv:Landroid/widget/ImageView;

.field private charge1000Tv:Landroid/widget/TextView;

.field private charge100Tv:Landroid/widget/TextView;

.field private charge10Tv:Landroid/widget/TextView;

.field private charge200Tv:Landroid/widget/TextView;

.field private charge500Tv:Landroid/widget/TextView;

.field private charge50Tv:Landroid/widget/TextView;

.field private chargeBtn:Landroid/widget/Button;

.field private chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

.field private chargeMoney:F

.field public chargeMoneys:[F

.field private customMoneyEv:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field public ischarge:Z

.field private orderid:Ljava/lang/String;

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field payDialog:Lcom/game/sdk/view/CustomDialog;

.field private payWay:Ljava/lang/String;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private productdesc:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field public tvs:[Landroid/widget/TextView;

.field private wxpayLayout:Landroid/widget/RelativeLayout;

.field private wxpaySelectedIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 78
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 102
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ChargeActivity$1;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 43
    return-void
.end method

.method static synthetic access$10()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/PayCoinEngin;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/ChargeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeEngin;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeEngin;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    sput-object p0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 455
    sput-object p0, Lcom/game/sdk/ui/ChargeActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget v2, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 431
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 438
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 459
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 465
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 469
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 473
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 474
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 480
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "activity_charge"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 214
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 149
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 153
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 154
    const-string v0, "\u5e73\u53f0\u5e01"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    .line 156
    const-string v0, "{\"gameid\" :0}"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->attach:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u5145\u503c"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    .line 159
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->backIv:Landroid/widget/ImageView;

    .line 160
    const-string v0, "charge_10_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    .line 161
    const-string v0, "charge_50_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    .line 162
    const-string v0, "charge_100_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    .line 163
    const-string v0, "charge_200_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    .line 164
    const-string v0, "charge_500_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    .line 165
    const-string v0, "charge_1000_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Tv:Landroid/widget/TextView;

    .line 166
    const-string v0, "custom_money_ev"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    .line 168
    const-string v0, "alipay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipayLayout:Landroid/widget/RelativeLayout;

    .line 169
    const-string v0, "wxpay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpayLayout:Landroid/widget/RelativeLayout;

    .line 171
    const-string v0, "alipay_selected_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    .line 172
    const-string v0, "wxpay_selected_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    .line 174
    const-string v0, "charge_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-array v0, v3, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    .line 187
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    .line 188
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    new-instance v1, Lcom/game/sdk/ui/ChargeActivity$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/ChargeActivity$2;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    return-void

    .line 187
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43fa0000    # 500.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 502
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 503
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    .line 505
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayMsg:Ljava/lang/String;

    .line 506
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 508
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 221
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v0, :cond_2

    .line 226
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    :cond_3
    const-string v0, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 238
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    iget v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 240
    const-string v0, "\u652f\u4ed8\u5b9d\u5355\u6b21\u5145\u503c\u91d1\u989d\u4e0d\u80fd\u8d85\u8fc72000"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_5
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-double v6, v1

    const-string v8, ""

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    const-string v1, "wxpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    invoke-direct {p0}, Lcom/game/sdk/ui/ChargeActivity;->prePayMessage()V

    .line 249
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "{orderid}"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 250
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 251
    .local v10, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 252
    .local v9, "info":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "13"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    .line 259
    :cond_7
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-double v6, v1

    sget-object v8, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    new-array v1, v4, [Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    .end local v9    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "manager":Landroid/net/ConnectivityManager;
    :cond_8
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 266
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 267
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 272
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 273
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    const-string v0, "wxpay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 278
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->selectText(I)V

    .line 283
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 485
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/ui/ChargeActivity$PayInitTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 490
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 493
    :cond_1
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    :cond_2
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 498
    :cond_3
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 388
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 389
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/ChargeActivity;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
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

    invoke-direct {p0}, Lcom/game/sdk/ui/ChargeActivity;->getSignType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    move-object v2, v1

    .line 395
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/ChargeActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/ChargeActivity$3;-><init>(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectText(I)V
    .locals 4
    .param p1, "selectId"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 298
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    aget v1, v1, v0

    iput v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 292
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 289
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method
