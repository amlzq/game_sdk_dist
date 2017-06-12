.class public Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;
.super Lcom/ipaynow/plugin/presenter/BasePresenter;


# static fields
.field private static synthetic s:[I


# instance fields
.field private a:I

.field private appId:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/webkit/WebView;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;

.field private l:Ljava/util/Map;

.field private m:Ljava/util/Timer;

.field mHandler:Landroid/os/Handler;

.field private mhtOrderNo:Ljava/lang/String;

.field private n:Ljava/util/TimerTask;

.field private final o:I

.field private p:Landroid/os/Bundle;

.field private q:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

.field private r:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;-><init>()V

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:I

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:Ljava/lang/String;

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->i:I

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->k:Ljava/util/Map;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->l:Ljava/util/Map;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->o:I

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->p:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->q:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->r:Ljava/lang/Thread;

    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->i:I

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->m:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->n:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "weixin"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v2, v4, :cond_3

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;

    invoke-direct {v4, p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->r:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->r:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/c;

    invoke-direct {v4, p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/c;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->r:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->r:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :catch_0
    move-exception v2

    iput-boolean v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5fae\u4fe1 \u672a\u5b89\u88c5"

    invoke-virtual {v2, v3, v4}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iput-boolean v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->s:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->values()[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ALIPAYISV_SK:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->EXCEPTION_SK:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->PREPAY_TRANS:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_SK001_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->s:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    return-void
.end method

.method static synthetic d(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:Z

    return v0
.end method

.method static synthetic f(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->m:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic i(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->n:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic j(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->i:I

    return v0
.end method

.method static synthetic l(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bindModel()V
    .locals 2

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->p:Landroid/os/Bundle;

    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;-><init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Lcom/ipaynow/plugin/view/IpaynowLoading;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->q:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    return-void
.end method

.method public bindView()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->requestWindowFeature(I)Z

    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u5fae\u4fe1\u652f\u4ed8..."

    invoke-interface {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->k:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public initData()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->p:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->p:Landroid/os/Bundle;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->p:Landroid/os/Bundle;

    const-string v1, "respOutputType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->p:Landroid/os/Bundle;

    const-string v1, "tn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->j:Ljava/lang/String;

    const-string v0, "https://pay.ipaynow.cn"

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->k:Ljava/util/Map;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->k:Ljava/util/Map;

    const-string v1, "Referer"

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->k:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->l:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b()[I

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/j;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;B)V

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/core/task/handle/impl/TaskHandler;->handleTaskResult(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onResume()V

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:I

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u4ea4\u6613\u7ed3\u679c..."

    invoke-interface {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->q:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;->toSK003(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:Z

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    return-void
.end method

.method public releaseViewResource()V
    .locals 0

    return-void
.end method
