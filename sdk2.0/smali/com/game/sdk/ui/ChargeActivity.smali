.class public Lcom/game/sdk/ui/ChargeActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "ChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;,
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

.field private callServiceTv:Landroid/widget/TextView;

.field private charge1000Layout:Landroid/widget/LinearLayout;

.field private charge1000Tv:Landroid/widget/TextView;

.field private charge100Layout:Landroid/widget/LinearLayout;

.field private charge100Tv:Landroid/widget/TextView;

.field private charge10Layout:Landroid/widget/LinearLayout;

.field private charge10Tv:Landroid/widget/TextView;

.field private charge200Layout:Landroid/widget/LinearLayout;

.field private charge200Tv:Landroid/widget/TextView;

.field private charge500Layout:Landroid/widget/LinearLayout;

.field private charge500Tv:Landroid/widget/TextView;

.field private charge50Layout:Landroid/widget/LinearLayout;

.field private charge50Tv:Landroid/widget/TextView;

.field private chargeBtn:Landroid/widget/Button;

.field private chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

.field public chargeLayouts:[Landroid/widget/LinearLayout;

.field private chargeMoney:F

.field private chargeMoneyEngin:Lcom/game/sdk/engin/ChargeMoneyEngin;

.field public chargeMoneys:[F

.field private customMoneyEv:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field public ischarge:Z

.field private mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

.field private orderid:Ljava/lang/String;

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field payDialog:Lcom/game/sdk/view/CustomDialog;

.field private payWay:Ljava/lang/String;

.field private platformMoneyTv:Landroid/widget/TextView;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private productdesc:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private realMoney1000Tv:Landroid/widget/TextView;

.field private realMoney100Tv:Landroid/widget/TextView;

.field private realMoney10Tv:Landroid/widget/TextView;

.field private realMoney200Tv:Landroid/widget/TextView;

.field private realMoney500Tv:Landroid/widget/TextView;

.field private realMoney50Tv:Landroid/widget/TextView;

.field public realMoneyTvs:[Landroid/widget/TextView;

.field public realMoneys:[F

.field private rightBtn:Landroid/widget/Button;

.field private serviceDialog:Lcom/game/sdk/view/ServiceDialog;

.field public tvs:[Landroid/widget/TextView;

.field private wxpayLayout:Landroid/widget/RelativeLayout;

.field private wxpaySelectedIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 707
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 125
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 155
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ChargeActivity$1;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;

    .line 705
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 54
    return-void
.end method

.method static synthetic access$10(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 707
    sput-object p0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/PayCoinEngin;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-void
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$15(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeMoneyEngin;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneyEngin:Lcom/game/sdk/engin/ChargeMoneyEngin;

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeMoneyEngin;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneyEngin:Lcom/game/sdk/engin/ChargeMoneyEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/ChargeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeEngin;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-void
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeEngin;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/ChargeActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    return-object v0
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
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget v2, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 682
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 689
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 710
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 712
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 714
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 716
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 718
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 720
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 724
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 725
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 726
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 728
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 731
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "fysdk_activity_charge"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 393
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 394
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->initTheme()V

    .line 395
    return-void
.end method

.method public initTheme()V
    .locals 14

    .prologue
    .line 402
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v11, :cond_0

    .line 403
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v11, :cond_0

    .line 404
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v0, v11, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 405
    .local v0, "btnColor":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 407
    const/4 v11, 0x3

    invoke-static {p0, v11}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    .line 409
    .local v7, "roundRadius":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 411
    .local v1, "fillColor":I
    const-string v11, "#979696"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 414
    .local v2, "fillColorPressed":I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 415
    .local v4, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 416
    int-to-float v11, v7

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 419
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 420
    .local v5, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 421
    int-to-float v11, v7

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 423
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 426
    .local v9, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v6, 0x10100a7

    .line 427
    .local v6, "pressed":I
    const v10, 0x101009d

    .line 428
    .local v10, "window_focused":I
    const v3, 0x101009c

    .line 429
    .local v3, "focused":I
    const v8, 0x10100a1

    .line 431
    .local v8, "selected":I
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    aput v10, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 432
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    neg-int v13, v3

    aput v13, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 433
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 434
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v3, v11, v12

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 435
    const/4 v11, 0x3

    new-array v11, v11, [I

    const/4 v12, 0x0

    neg-int v13, v8

    aput v13, v11, v12

    const/4 v12, 0x1

    neg-int v13, v3

    aput v13, v11, v12

    const/4 v12, 0x2

    neg-int v13, v6

    aput v13, v11, v12

    invoke-virtual {v9, v11, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v11, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    .end local v0    # "btnColor":Ljava/lang/String;
    .end local v1    # "fillColor":I
    .end local v2    # "fillColorPressed":I
    .end local v3    # "focused":I
    .end local v4    # "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "pressed":I
    .end local v7    # "roundRadius":I
    .end local v8    # "selected":I
    .end local v9    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v10    # "window_focused":I
    :cond_0
    return-void
.end method

.method public initVars()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 220
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 221
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->unCkeckEnvironment()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 222
    return-void
.end method

.method public initViews()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 227
    const-string v0, "\u5e73\u53f0\u5e01"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productname:Ljava/lang/String;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->productdesc:Ljava/lang/String;

    .line 229
    const-string v0, "{\"gameid\" :0}"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->attach:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/game/sdk/view/ServiceDialog;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/ServiceDialog;-><init>(Landroid/app/Activity;F)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceDialog:Lcom/game/sdk/view/ServiceDialog;

    .line 231
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u5145\u503c"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    .line 232
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->backIv:Landroid/widget/ImageView;

    .line 233
    const-string v0, "right_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rightBtn:Landroid/widget/Button;

    .line 234
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    const-string v0, "platform_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->platformMoneyTv:Landroid/widget/TextView;

    .line 237
    const-string v0, "charge_10_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    .line 238
    const-string v0, "charge_50_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    .line 239
    const-string v0, "charge_100_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    .line 240
    const-string v0, "charge_200_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    .line 241
    const-string v0, "charge_500_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    .line 242
    const-string v0, "charge_1000_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Tv:Landroid/widget/TextView;

    .line 244
    const-string v0, "real_money_10_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney10Tv:Landroid/widget/TextView;

    .line 245
    const-string v0, "real_money_50_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney50Tv:Landroid/widget/TextView;

    .line 246
    const-string v0, "real_money_100_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney100Tv:Landroid/widget/TextView;

    .line 247
    const-string v0, "real_money_200_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney200Tv:Landroid/widget/TextView;

    .line 248
    const-string v0, "real_money_500_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney500Tv:Landroid/widget/TextView;

    .line 249
    const-string v0, "real_money_1000_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney1000Tv:Landroid/widget/TextView;

    .line 251
    const-string v0, "charge_10_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Layout:Landroid/widget/LinearLayout;

    .line 252
    const-string v0, "charge_50_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Layout:Landroid/widget/LinearLayout;

    .line 253
    const-string v0, "charge_100_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Layout:Landroid/widget/LinearLayout;

    .line 254
    const-string v0, "charge_200_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Layout:Landroid/widget/LinearLayout;

    .line 255
    const-string v0, "charge_500_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Layout:Landroid/widget/LinearLayout;

    .line 256
    const-string v0, "charge_1000_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Layout:Landroid/widget/LinearLayout;

    .line 258
    const-string v0, "custom_money_ev"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    .line 260
    const-string v0, "alipay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipayLayout:Landroid/widget/RelativeLayout;

    .line 261
    const-string v0, "wxpay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpayLayout:Landroid/widget/RelativeLayout;

    .line 263
    const-string v0, "call_service_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->callServiceTv:Landroid/widget/TextView;

    .line 265
    const-string v0, "alipay_selected_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    .line 266
    const-string v0, "wxpay_selected_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    .line 268
    const-string v0, "charge_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    .line 269
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->callServiceTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Tv:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Tv:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Tv:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Tv:Landroid/widget/TextView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Tv:Landroid/widget/TextView;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    .line 286
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney10Tv:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney50Tv:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney100Tv:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney200Tv:Landroid/widget/TextView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney500Tv:Landroid/widget/TextView;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 287
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoney1000Tv:Landroid/widget/TextView;

    aput-object v2, v0, v1

    .line 286
    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    .line 288
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge10Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge50Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge100Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge200Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    .line 289
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->charge500Layout:Landroid/widget/LinearLayout;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity;->charge1000Layout:Landroid/widget/LinearLayout;

    aput-object v2, v0, v1

    .line 288
    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    .line 292
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    new-instance v1, Lcom/game/sdk/ui/ChargeActivity$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/ChargeActivity$2;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 326
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->setPlatformMoney()V

    .line 328
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 759
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 760
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    .line 762
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayMsg:Ljava/lang/String;

    .line 763
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 765
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 449
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v0, :cond_2

    .line 454
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 458
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

    .line 459
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 460
    :cond_3
    const-string v0, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 466
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-double v6, v1

    const-string v8, ""

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    const-string v1, "wxpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 476
    invoke-direct {p0}, Lcom/game/sdk/ui/ChargeActivity;->prePayMessage()V

    .line 477
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "{orderid}"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 478
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 479
    .local v13, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 480
    .local v10, "info":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "13"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    .line 487
    :cond_6
    new-instance v0, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    iget v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    float-to-double v6, v1

    sget-object v8, Lcom/game/sdk/ui/ChargeActivity;->preSignStr:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 488
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeActivity$PayInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "manager":Landroid/net/ConnectivityManager;
    :cond_7
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 496
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 497
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 502
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 503
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->alipaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->wxpaySelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    const-string v0, "wxpay"

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->payWay:Ljava/lang/String;

    .line 508
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "custom_money_ev"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeActivity;->selectText(I)V

    .line 513
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "custom_money_ev"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 515
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    array-length v0, v0

    if-lt v9, v0, :cond_f

    .line 519
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 520
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 521
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 522
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 523
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 525
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 526
    .local v11, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 529
    .end local v9    # "i":I
    .end local v11    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 530
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 533
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "call_service_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 534
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceDialog:Lcom/game/sdk/view/ServiceDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/view/ServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 535
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->serviceDialog:Lcom/game/sdk/view/ServiceDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/ServiceDialog;->show()V

    .line 538
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "right_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 539
    new-instance v12, Landroid/content/Intent;

    const-class v0, Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-direct {v12, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v12}, Lcom/game/sdk/ui/ChargeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 516
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v9    # "i":I
    :cond_f
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 515
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
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

.method protected onPause()V
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 788
    const-string v0, "ChargeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 789
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 790
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 735
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 736
    const-string v0, "ChargeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 737
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 739
    const-string v0, "sdk_open_charge_page"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 741
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 747
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 750
    :cond_1
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    sget-object v0, Lcom/game/sdk/ui/ChargeActivity;->nowpayMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    :cond_2
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeActivity;->isnowpay:Ljava/lang/String;

    .line 755
    :cond_3
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 639
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 640
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/ChargeActivity;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
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

    .line 645
    move-object v2, v1

    .line 646
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/ChargeActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/ChargeActivity$3;-><init>(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectText(I)V
    .locals 5
    .param p1, "selectId"    # I

    .prologue
    const/4 v4, 0x0

    .line 545
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 546
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelected(Z)V

    .line 547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 557
    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    aget v1, v1, v0

    iput v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    .line 550
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeMoney:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 547
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_1
.end method

.method public setPlatformMoney()V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity;->platformMoneyTv:Landroid/widget/TextView;

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 333
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
