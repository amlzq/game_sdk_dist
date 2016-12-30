.class final Lcom/payeco/android/plugin/w;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;


# direct methods
.method synthetic constructor <init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payeco/android/plugin/w;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;B)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/w;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "pdus"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v4, v1, [[B

    move v3, v2

    :goto_0
    array-length v1, v0

    if-lt v3, v1, :cond_1

    array-length v0, v4

    new-array v1, v0, [[B

    array-length v3, v1

    new-array v5, v3, [Landroid/telephony/gsm/SmsMessage;

    move v0, v2

    :goto_1
    if-lt v0, v3, :cond_2

    array-length v1, v5

    move v0, v2

    :goto_2
    if-lt v0, v1, :cond_3

    :cond_0
    :goto_3
    return-void

    :cond_1
    aget-object v1, v0, v3

    check-cast v1, [B

    aput-object v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    aget-object v6, v4, v0

    aput-object v6, v1, v0

    aget-object v6, v1, v0

    invoke-static {v6}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v2, v5, v0

    iget-object v3, p0, Lcom/payeco/android/plugin/w;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v3}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "SmsNumber"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payeco/android/plugin/w;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v2}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->sendSMSResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v3}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$0(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
