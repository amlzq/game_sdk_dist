.class public Lcom/ipaynow/plugin/activity/PayMethodActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/util/HashMap;

.field private appId:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private loading:Landroid/app/ProgressDialog;

.field private mhtOrderNo:Ljava/lang/String;

.field private payChannelType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->mhtOrderNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->c:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 17

    const-string v1, "channelDispOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v1, "alipay_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v1, "upmp_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v1, "dotpay_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v1, "recharg_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v1, "wechat_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    const-string v1, "baidu_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v1, "qq_logo.png"

    const/16 v2, 0x50

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/ipaynow/plugin/a/b/c/b;

    invoke-direct {v2}, Lcom/ipaynow/plugin/a/b/c/b;-><init>()V

    array-length v13, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-lt v3, v13, :cond_0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v12

    :cond_0
    aget-object v1, v4, v3

    const-string v14, "\\|"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    aget-object v14, v1, v14

    const/4 v15, 0x1

    aget-object v15, v1, v15

    const/4 v1, 0x0

    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->m:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v6, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->o:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v5, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->p:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v7, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->q:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v8, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->r:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v9, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->s:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v9, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v10, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v16, Lcom/ipaynow/plugin/conf/PluginConfig;->u:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    new-instance v1, Lcom/ipaynow/plugin/a/b/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v11, v15, v14}, Lcom/ipaynow/plugin/a/b/c/c;-><init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lcom/ipaynow/plugin/a/b/c/b;->i()I

    move-result v14

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/ipaynow/plugin/a/b/c/b;

    invoke-direct {v2}, Lcom/ipaynow/plugin/a/b/c/b;-><init>()V

    :cond_9
    invoke-virtual {v2, v1}, Lcom/ipaynow/plugin/a/b/c/b;->a(Lcom/ipaynow/plugin/a/b/c/c;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_UNKNOWN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    const-string v2, "PE009"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    const-string v2, "\u6e20\u9053\u5176\u4ed6\u672a\u77e5\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :sswitch_0
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    const-string v2, "PE005"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    const-string v2, "\u6e20\u9053\u4ea4\u6613\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    const-string v2, "PE002"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    const-string v2, "PE005"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    const-string v2, "\u6e20\u9053\u4ea4\u6613\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xfa0 -> :sswitch_4
        0x1771 -> :sswitch_3
        0x1772 -> :sswitch_2
        0x1f40 -> :sswitch_1
        0x2328 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/widget/ListView;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u901a\u9053\u8fde\u63a5\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->m:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->o:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->r:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :try_start_0
    const-string v0, "com.ipaynow.plugin.inner_plugin.prepay_plugin.a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->p:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v6}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :try_start_1
    const-string v0, "com.ipaynow.plugin.inner_plugin.prepay_plugin.a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->q:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v6}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->s:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->u:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_UNKNOWN:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->mhtOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->c:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p3, :cond_0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_UNKNOWN:Ljava/lang/String;

    const-string v1, "PE005"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_SUCCESS:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v1, "PE004"

    const-string v2, "\u94f6\u8054\u652f\u4ed8\u5931\u8d25\uff0c\u539f\u56e0\u672a\u77e5"

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "respMsg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->setTheme(I)V

    invoke-virtual {p0, v11}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PAY_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->mhtOrderNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "appId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "nowPayOrderNo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v0, "nowPayOrderNo"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "orderSysReserveSign="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v0, "orderSysReserveSign"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "deviceType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "mhtName"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mhtOrderName"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "mhtOrderAmt"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v6, "\u5546\u6237\u540d\u79f0 "

    invoke-direct {v5, v6, v0}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v5, "\u8ba2\u5355\u7f16\u53f7"

    invoke-direct {v0, v5, v1}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v1, "\u8ba2\u5355\u540d\u79f0 "

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v1, "\u4ed8\u6b3e\u91d1\u989d "

    invoke-direct {v0, v1, v3}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/conf/PluginConfig;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/ipaynow/plugin/a/a/d;

    invoke-direct {v1, p0, v4}, Lcom/ipaynow/plugin/a/a/d;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/ipaynow/plugin/a/a/d;->f()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ipaynow/plugin/a/a/d;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Lcom/ipaynow/plugin/view/a;

    const-string v4, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, p0, v4}, Lcom/ipaynow/plugin/view/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v12, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    sget v4, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {v4, v12, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setFocusable(Z)V

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v6, Lcom/ipaynow/plugin/a/b/b/b;

    new-instance v7, Lcom/ipaynow/plugin/activity/f;

    invoke-direct {v7, p0, v10}, Lcom/ipaynow/plugin/activity/f;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;B)V

    invoke-direct {v6, v0, v7}, Lcom/ipaynow/plugin/a/b/b/b;-><init>(Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ipaynow/plugin/a/b/a;

    invoke-direct {v0, v6, p0}, Lcom/ipaynow/plugin/a/b/a;-><init>(Lcom/ipaynow/plugin/a/b/a/a;Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Landroid/widget/ListView;)V

    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :try_start_0
    const-string v0, "com.ipaynow.plugin.inner_plugin.prepay_plugin.a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, v13, v13}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "payChannelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/ipaynow/plugin/activity/c;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/activity/c;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v1, "PE001"

    const-string v2, "\u63d2\u4ef6\u4e0d\u652f\u6301\u8be5\u6e20\u9053\u4ea4\u6613"

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->payChannelType:Ljava/lang/String;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ipaynow/plugin/activity/a;

    invoke-direct {v2, p0, v0}, Lcom/ipaynow/plugin/activity/a;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
