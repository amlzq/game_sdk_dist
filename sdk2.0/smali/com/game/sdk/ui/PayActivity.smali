.class public Lcom/game/sdk/ui/PayActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "PayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/view/PayResultDialog$PayResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .line 138
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 726
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 110
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/game/sdk/ui/PayActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/PayActivity$1;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->handler:Landroid/os/Handler;

    .line 724
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 64
    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 726
    sput-object p0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 725
    sput-object p0, Lcom/game/sdk/ui/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$15()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$16(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$17(Lcom/game/sdk/ui/PayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/PayActivity;)F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    return v0
.end method

.method static synthetic access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-object v0
.end method

.method static synthetic access$21(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-void
.end method

.method static synthetic access$23(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$24(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-void
.end method

.method static synthetic access$26(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/ChargeEngin;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-void
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/ChargeEngin;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->chargeEngin:Lcom/game/sdk/engin/ChargeEngin;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/PayActivity;F)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    return-void
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

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
    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "moduleStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get--CouponInfoList---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 345
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const-class v3, Lcom/game/sdk/domain/CouponInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 351
    .end local v2    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
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
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "partner=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string v2, "\"&out_trade_no=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v2, "\"&subject=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v2, "\"&body=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v2, "\"&total_fee=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 701
    const-string v2, "\"&notify_url=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 708
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v2, "\"&service=\"mobile.securitypay.pay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v2, "\"&_input_charset=\"UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v2, "\"&payment_type=\"1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v2, "\"&seller_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v2, "\"&it_b_pay=\"1m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private prePayMessage()V
    .locals 4

    .prologue
    .line 729
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "{appid}"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 730
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "156"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 733
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget v2, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 737
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v3, "{starttime}"

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v3, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "3600"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 744
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v2, "01"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/net/constans/ServerConfig;->getPayCallUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iput-object v0, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 750
    return-void
.end method


# virtual methods
.method public continuePay()V
    .locals 0

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->pay()V

    .line 789
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "activity_payment"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 310
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 312
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roleid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->role:Ljava/lang/String;

    .line 314
    const-string v1, "serverid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->server:Ljava/lang/String;

    .line 315
    const-string v1, "money"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    .line 316
    iget v1, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    iput v1, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    .line 317
    const-string v1, "productname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    .line 318
    const-string v1, "productdesc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productdesc:Ljava/lang/String;

    .line 320
    const-string v1, "attach"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->productNameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->orderAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v2, Lcom/game/sdk/engin/PayCoinEngin;

    .line 327
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v2, p0, v1}, Lcom/game/sdk/engin/PayCoinEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    iput-object v2, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    .line 328
    new-instance v1, Lcom/game/sdk/view/CustomDialog;

    const-string v2, "\u6b63\u5728\u521b\u5efa\u8ba2\u5355"

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 329
    new-instance v1, Lcom/game/sdk/view/PayResultDialog;

    invoke-direct {v1, p0}, Lcom/game/sdk/view/PayResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    .line 330
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v1, p0}, Lcom/game/sdk/view/PayResultDialog;->setPayResultListener(Lcom/game/sdk/view/PayResultDialog$PayResultListener;)V

    .line 331
    new-instance v1, Lcom/game/sdk/ui/PayActivity$PayInitTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayInitTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayInitTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/PayActivity$PayInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    return-void

    .line 327
    :cond_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 215
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 220
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->inflater:Landroid/view/LayoutInflater;

    .line 222
    const-string v0, "pay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payLayout:Landroid/widget/LinearLayout;

    .line 224
    const-string v0, "coupon_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponLayout:Landroid/widget/RelativeLayout;

    .line 225
    const-string v0, "more_coupon_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    .line 226
    const-string v0, "alipay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    .line 227
    const-string v0, "wxpay_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 231
    const-string v0, "coupon_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    .line 232
    const-string v0, "platform_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    .line 233
    const-string v0, "game_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    .line 234
    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->closeIv:Landroid/widget/ImageView;

    .line 236
    const-string v0, "product_name_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->productNameTv:Landroid/widget/TextView;

    .line 237
    const-string v0, "order_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->orderAmountTv:Landroid/widget/TextView;

    .line 238
    const-string v0, "real_pay_amount_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;

    .line 240
    const-string v0, "coupon_use_info_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;

    .line 241
    const-string v0, "platform_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;

    .line 242
    const-string v0, "game_money_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;

    .line 243
    const-string v0, "pay_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/PayActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payGameBtn:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payGameBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$2;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$3;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/game/sdk/ui/PayActivity$4;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/PayActivity$4;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/PayActivity;->setFinishOnTouchOutside(Z)V

    .line 306
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 778
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 779
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    .line 781
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    .line 782
    const-string v0, "2"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 784
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "close_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "more_coupon_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->showCouponList()V

    .line 365
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "coupon_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->showCouponList()V

    .line 368
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "alipay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 370
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 371
    const-string v0, "alipay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 373
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "wxpay_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 374
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->alipayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 375
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->wxpayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 376
    const-string v0, "wxpay"

    iput-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 379
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "pay_game_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/PayActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->pay()V

    .line 382
    :cond_5
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
    .locals 0

    .prologue
    .line 801
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 802
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 754
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 761
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 766
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 769
    :cond_1
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayCode:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    sget-object v0, Lcom/game/sdk/ui/PayActivity;->nowpayMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 772
    :cond_2
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;

    .line 774
    :cond_3
    return-void
.end method

.method public pay()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u652f\u4ed8\u524d\u5b9e\u9645\u652f\u4ed8\u91d1\u989d---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 390
    new-instance v2, Lcom/game/sdk/domain/PayRequestParams;

    invoke-direct {v2}, Lcom/game/sdk/domain/PayRequestParams;-><init>()V

    .line 391
    .local v2, "params":Lcom/game/sdk/domain/PayRequestParams;
    const-string v5, "1"

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->is_game_pay:Ljava/lang/String;

    .line 393
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 395
    .local v4, "tempPayWay":Ljava/lang/String;
    iget v5, p0, Lcom/game/sdk/ui/PayActivity;->amount:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 396
    const-string v4, ""

    .line 399
    :cond_0
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsId:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->goods_id:Ljava/lang/String;

    .line 401
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->card_id:Ljava/lang/String;

    .line 402
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardTypeName:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->good_type_name:Ljava/lang/String;

    .line 404
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    .line 407
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 409
    .local v3, "temp":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 412
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_2
    const-string v5, "gamemoney"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    :cond_3
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 421
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    :cond_4
    const-string v5, "money"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->pay_ways:Ljava/lang/String;

    .line 428
    iget v5, p0, Lcom/game/sdk/ui/PayActivity;->totalPrice:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->amount:Ljava/lang/String;

    .line 429
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->role:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->role:Ljava/lang/String;

    .line 430
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->server:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->server:Ljava/lang/String;

    .line 431
    const-string v5, ""

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->appid:Ljava/lang/String;

    .line 432
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->productname:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->productname:Ljava/lang/String;

    .line 433
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->attach:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->attach:Ljava/lang/String;

    .line 435
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v6, "alipay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 436
    const-string v5, ""

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 437
    new-instance v5, Lcom/game/sdk/ui/PayActivity$PayGameTask;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayGameTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    :cond_6
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payWay:Ljava/lang/String;

    const-string v6, "wxpay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 440
    invoke-direct {p0}, Lcom/game/sdk/ui/PayActivity;->prePayMessage()V

    .line 441
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v6, "{orderid}"

    iput-object v6, v5, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 442
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 443
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 444
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 446
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v6, "13"

    iput-object v6, v5, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 448
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    .line 450
    :cond_7
    sget-object v5, Lcom/game/sdk/ui/PayActivity;->preSignStr:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 451
    new-instance v5, Lcom/game/sdk/ui/PayActivity$PayGameTask;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$PayGameTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 454
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_8
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 455
    return-void
.end method

.method public payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 658
    :try_start_0
    invoke-static {p3}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 659
    invoke-static {p3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/PayActivity;->getNewOrderInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/game/sdk/security/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 663
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

    .line 664
    move-object v2, v1

    .line 665
    .local v2, "orderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager;

    move-result-object v4

    new-instance v5, Lcom/game/sdk/ui/PayActivity$6;

    invoke-direct {v5, p0, v2}, Lcom/game/sdk/ui/PayActivity$6;-><init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "orderInfo":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public paySuccess()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->dismiss()V

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 797
    return-void
.end method

.method public showCouponList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 460
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    invoke-virtual {v3}, Lcom/game/sdk/engin/PayCoinEngin;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/game/sdk/ui/PayActivity;->getCouponInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    .line 465
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    if-nez v3, :cond_2

    .line 469
    new-instance v3, Lcom/game/sdk/ui/adapter/CouponListAdapter;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/game/sdk/ui/adapter/CouponListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    .line 472
    :cond_2
    const/16 v3, 0x154

    invoke-static {p0, v3}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 473
    .local v1, "pwidth":I
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    if-nez v3, :cond_3

    .line 474
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->inflater:Landroid/view/LayoutInflater;

    const-string v4, "layout"

    const-string v5, "coupon_list"

    invoke-static {p0, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 475
    .local v2, "view":Landroid/view/View;
    const-string v3, "id"

    const-string v4, "coupon_list_view"

    invoke-static {p0, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 476
    .local v0, "lv_pw":Landroid/widget/ListView;
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 477
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 478
    new-instance v3, Lcom/game/sdk/ui/PayActivity$5;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/PayActivity$5;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 529
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    .line 530
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 536
    .end local v0    # "lv_pw":Landroid/widget/ListView;
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->moreCouponLayout:Landroid/widget/LinearLayout;

    neg-int v5, v1

    const/16 v6, 0x30

    invoke-static {p0, v6}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/adapter/CouponListAdapter;->initDataList(Ljava/util/List;)V

    .line 534
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity;->adapter:Lcom/game/sdk/ui/adapter/CouponListAdapter;

    invoke-virtual {v3}, Lcom/game/sdk/ui/adapter/CouponListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
