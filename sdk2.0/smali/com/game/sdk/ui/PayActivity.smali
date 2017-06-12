.class public Lcom/game/sdk/ui/PayActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "PayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/view/PayResultDialog$PayResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;,
        Lcom/game/sdk/ui/PayActivity$PayCancelTask;,
        Lcom/game/sdk/ui/PayActivity$PayGameTask;,
        Lcom/game/sdk/ui/PayActivity$PayInitTask;
    }
.end annotation


# static fields
.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;

.field public static paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

.field private static preSignStr:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

.field private alipayLayout:Landroid/widget/LinearLayout;

.field private amount:F

.field private appid:Ljava/lang/String;

.field private attach:Ljava/lang/String;

.field private chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

.field private closeIv:Landroid/widget/ImageView;

.field private couponCheckBox:Landroid/widget/CheckBox;

.field private couponCountTv:Landroid/widget/TextView;

.field private couponInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field private couponLayout:Landroid/widget/RelativeLayout;

.field private couponUseInfoTv:Landroid/widget/TextView;

.field private currentCoupon:Lcom/game/sdk/domain/CouponInfo;

.field private gameCoinCheckBox:Landroid/widget/CheckBox;

.field private gameMoneyTv:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private lastCoupon:Lcom/game/sdk/domain/CouponInfo;

.field private mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

.field private moreCouponLayout:Landroid/widget/LinearLayout;

.field private orderAmountTv:Landroid/widget/TextView;

.field private orderid:Ljava/lang/String;

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field private payGameBtn:Landroid/widget/TextView;

.field payGameDialog:Lcom/game/sdk/view/CustomDialog;

.field private payLayout:Landroid/widget/LinearLayout;

.field payResultDialog:Lcom/game/sdk/view/PayResultDialog;

.field private payWay:Ljava/lang/String;

.field private platformCoinCheckBox:Landroid/widget/CheckBox;

.field private platformMoneyTv:Landroid/widget/TextView;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private productNameTv:Landroid/widget/TextView;

.field private productdesc:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private pwCoupon:Landroid/widget/PopupWindow;

.field private realPayAmountTv:Landroid/widget/TextView;

.field private role:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private totalPrice:F

.field private wxpayLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 826
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 121
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    .line 160
    new-instance v0, Lcom/game/sdk/ui/PayActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/PayActivity$1;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->handler:Landroid/os/Handler;

    .line 824
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 73
    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/PayActivity;F)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    sput-object p0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-object v0
.end method

.method static synthetic access$18(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$19(Lcom/game/sdk/ui/PayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/PayActivity;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    return v0
.end method

.method static synthetic access$20(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$22(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-object v0
.end method

.method static synthetic access$23(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-void
.end method

.method static synthetic access$25(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$26(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27(Lcom/game/sdk/ui/PayActivity;)F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    return v0
.end method

.method static synthetic access$28(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-void
.end method

.method static synthetic access$29(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/ChargeEngin;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-void
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/ChargeEngin;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-object v0
.end method

.method private getCouponInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "moduleStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get--CouponInfoList---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 404
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    const-class v3, Lcom/game/sdk/domain/CouponInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 410
    .end local v2    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
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
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 801
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 808
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 829
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 831
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 833
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 835
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 837
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 839
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 842
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 843
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 844
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 846
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 849
    return-void
.end method


# virtual methods
.method public continuePay()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 986
    new-instance v0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;-><init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 990
    :goto_0
    return-void

    .line 988
    :cond_0
    const-string v0, "\u8ba2\u5355\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "fysdk_activity_payment"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 371
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roleid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->role:Ljava/lang/String;

    .line 373
    const-string v1, "serverid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->server:Ljava/lang/String;

    .line 374
    const-string v1, "money"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    .line 375
    iget v1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v1, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    .line 376
    const-string v1, "productname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    .line 377
    const-string v1, "productdesc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    .line 379
    const-string v1, "attach"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productNameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->orderAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    new-instance v2, Lcom/game/sdk/engin/PayCoinEngin;

    .line 386
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v2, p0, v1}, Lcom/game/sdk/engin/PayCoinEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    iput-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    .line 387
    new-instance v1, Lcom/game/sdk/view/CustomDialog;

    const-string v2, "\u6b63\u5728\u521b\u5efa\u8ba2\u5355"

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 388
    new-instance v1, Lcom/game/sdk/view/PayResultDialog;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/PayResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    .line 389
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v1, p0}, Lcom/game/sdk/view/PayResultDialog;->setPayResultListener(Lcom/game/sdk/view/PayResultDialog$PayResultListener;)V

    .line 390
    new-instance v1, Lcom/game/sdk/ui/PayActivity$PayInitTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayInitTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayInitTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/PayActivity$PayInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 391
    return-void

    .line 386
    :cond_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public initVars()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 261
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->setOrientation()V

    .line 262
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 264
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->mIpaynowplugin:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->unCkeckEnvironment()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initVars width---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 273
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->inflater:Landroid/view/LayoutInflater;

    .line 275
    const-string v0, "pay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payLayout:Landroid/widget/LinearLayout;

    .line 277
    const-string v0, "coupon_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponLayout:Landroid/widget/RelativeLayout;

    .line 278
    const-string v0, "more_coupon_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    .line 279
    const-string v0, "num_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCountTv:Landroid/widget/TextView;

    .line 280
    const-string v0, "alipay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    .line 281
    const-string v0, "wxpay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    .line 283
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 285
    const-string v0, "coupon_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    .line 286
    const-string v0, "platform_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    .line 287
    const-string v0, "game_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    .line 288
    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->closeIv:Landroid/widget/ImageView;

    .line 290
    const-string v0, "product_name_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->productNameTv:Landroid/widget/TextView;

    .line 291
    const-string v0, "order_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderAmountTv:Landroid/widget/TextView;

    .line 292
    const-string v0, "real_pay_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    .line 294
    const-string v0, "coupon_use_info_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;

    .line 295
    const-string v0, "platform_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;

    .line 296
    const-string v0, "game_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;

    .line 297
    const-string v0, "pay_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payGameBtn:Landroid/widget/TextView;

    .line 298
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payGameBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/game/sdk/ui/PayActivity$2;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$3;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$4;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$4;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 349
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$5;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$5;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 364
    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/PayActivity;->setFinishOnTouchOutside(Z)V

    .line 365
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 946
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 947
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    .line 949
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    .line 950
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 952
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "close_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "more_coupon_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->showCouponList()V

    .line 424
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "coupon_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->showCouponList()V

    .line 427
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 428
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 429
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 430
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 432
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 433
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 434
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 435
    const-string v0, "wxpay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 444
    :cond_4
    return-void
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

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1009
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 1010
    const-string v0, "Pay----onDestroy--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1002
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 1003
    const-string v0, "PayActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1004
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1005
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 873
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 874
    const-string v2, "PayActivity"

    invoke-static {v2}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 875
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 877
    const-string v2, "game_open_charge"

    invoke-static {p0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 879
    const-string v2, "Payactivity onResume---"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 882
    sget-object v2, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 883
    sget-object v2, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    const-string v2, "\u652f\u4ed8\u6210\u529f--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 888
    new-instance v1, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v1}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 889
    .local v1, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v2, v1, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 890
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    iput-object v2, v1, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 893
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v2, :cond_0

    .line 894
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 900
    .end local v1    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    :cond_1
    sget-object v2, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 902
    const-string v2, "\u652f\u4ed8\u53d6\u6d88--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 904
    new-instance v0, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v0}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 905
    .local v0, "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const/4 v2, 0x2

    iput v2, v0, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 906
    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    iput-object v2, v0, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 907
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v2, v0, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 910
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v2, :cond_2

    .line 911
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 914
    :cond_2
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 915
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 916
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/PayResultDialog;->show()V

    .line 921
    .end local v0    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    :cond_3
    sget-object v2, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 922
    sget-object v2, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 923
    new-instance v0, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v0}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 924
    .restart local v0    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const/4 v2, 0x1

    iput v2, v0, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 925
    sget-object v2, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    iput-object v2, v0, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 926
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v2, v0, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 929
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v2, :cond_4

    .line 930
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 933
    .end local v0    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    :cond_4
    const-string v2, "0"

    sput-object v2, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 936
    :cond_5
    return-void
.end method

.method public pay()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u652f\u4ed8\u524d\u5b9e\u9645\u652f\u4ed8\u91d1\u989d---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 471
    new-instance v2, Lcom/game/sdk/domain/PayRequestParams;

    invoke-direct {v2}, Lcom/game/sdk/domain/PayRequestParams;-><init>()V

    .line 472
    .local v2, "params":Lcom/game/sdk/domain/PayRequestParams;
    const-string v5, "1"

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->is_game_pay:Ljava/lang/String;

    .line 474
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 476
    .local v4, "tempPayWay":Ljava/lang/String;
    iget v5, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 477
    const-string v4, ""

    .line 480
    :cond_0
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsId:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->goods_id:Ljava/lang/String;

    .line 482
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->card_id:Ljava/lang/String;

    .line 483
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardTypeName:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->good_type_name:Ljava/lang/String;

    .line 485
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 488
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 490
    .local v3, "temp":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 493
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    :cond_2
    const-string v5, "gamemoney"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_3
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 501
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 502
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    :cond_4
    const-string v5, "money"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->pay_ways:Ljava/lang/String;

    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->amount:Ljava/lang/String;

    .line 510
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->role:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->role:Ljava/lang/String;

    .line 511
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->server:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->server:Ljava/lang/String;

    .line 512
    const-string v5, ""

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->appid:Ljava/lang/String;

    .line 513
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->productname:Ljava/lang/String;

    .line 514
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->attach:Ljava/lang/String;

    .line 516
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v6, "alipay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 517
    const-string v5, ""

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 518
    new-instance v5, Lcom/game/sdk/ui/PayActivity$PayGameTask;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayGameTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    :cond_6
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v6, "wxpay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 521
    invoke-direct {p0}, Lcom/game/sdk/ui/PayActivity;->prePayMessage()V

    .line 522
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v6, "{orderid}"

    iput-object v6, v5, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 523
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 524
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 525
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 527
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v6, "13"

    iput-object v6, v5, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 529
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    .line 531
    :cond_7
    sget-object v5, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pay params -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 534
    new-instance v5, Lcom/game/sdk/ui/PayActivity$PayGameTask;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayGameTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 537
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_8
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_9

    .line 538
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 541
    :cond_9
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 758
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 759
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/PayActivity;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
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

    invoke-direct {p0}, Lcom/game/sdk/ui/PayActivity;->getSignType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    move-object v2, v1

    .line 765
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/PayActivity$7;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$7;-><init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 781
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public paySuccess()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->dismiss()V

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 998
    return-void
.end method

.method public setOrientation()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 852
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 853
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 855
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v2, :cond_0

    .line 856
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/PayActivity;->setRequestedOrientation(I)V

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onresume width land ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 858
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 859
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 861
    :cond_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v2, v6, :cond_1

    .line 862
    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/PayActivity;->setRequestedOrientation(I)V

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onresume width port ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 864
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 865
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 868
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 869
    return-void
.end method

.method public showCouponList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 545
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 553
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 556
    :cond_2
    iput-object v2, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    .line 558
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 561
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    if-nez v4, :cond_3

    .line 562
    new-instance v4, Lcom/game/sdk/ui/adapter/CouponListAdapter;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/game/sdk/ui/adapter/CouponListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    .line 565
    :cond_3
    const/16 v4, 0x154

    invoke-static {p0, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 566
    .local v1, "pwidth":I
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    if-nez v4, :cond_4

    .line 567
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->inflater:Landroid/view/LayoutInflater;

    const-string v5, "layout"

    const-string v6, "coupon_list"

    invoke-static {p0, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 568
    .local v3, "view":Landroid/view/View;
    const-string v4, "id"

    const-string v5, "coupon_list_view"

    invoke-static {p0, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 569
    .local v0, "lv_pw":Landroid/widget/ListView;
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 570
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 571
    new-instance v4, Lcom/game/sdk/ui/PayActivity$6;

    invoke-direct {v4, p0}, Lcom/game/sdk/ui/PayActivity$6;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 630
    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v4, v3, v1, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    .line 631
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 637
    .end local v0    # "lv_pw":Landroid/widget/ListView;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    neg-int v6, v1

    const/16 v7, 0x30

    invoke-static {p0, v7}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 634
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v4, v2}, Lcom/game/sdk/ui/adapter/CouponListAdapter;->initDataList(Ljava/util/List;)V

    .line 635
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v4}, Lcom/game/sdk/ui/adapter/CouponListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
