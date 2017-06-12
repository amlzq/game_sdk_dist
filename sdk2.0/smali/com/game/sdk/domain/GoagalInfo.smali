.class public Lcom/game/sdk/domain/GoagalInfo;
.super Ljava/lang/Object;
.source "GoagalInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "6071Box"

.field public static agentid:Ljava/lang/String;

.field public static appid:Ljava/lang/String;

.field public static bindMobileFrom:I

.field public static channel:Ljava/lang/String;

.field public static channelInfo:Lcom/game/sdk/domain/ChannelInfo;

.field public static couponCount:I

.field public static couponList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static fromId:Ljava/lang/String;

.field public static gameid:Ljava/lang/String;

.field public static imei:Ljava/lang/String;

.field public static inItInfo:Lcom/game/sdk/domain/InItInfo;

.field public static initActivity:Landroid/app/Activity;

.field public static isChangeAccount:Z

.field public static isEmulator:Z

.field public static isGetValidate:I

.field public static isLogin:Z

.field public static isQuick:I

.field public static loginType:I

.field public static loginlistener:Lcom/game/sdk/domain/OnLoginListener;

.field public static loginoutRunnable:Ljava/lang/Runnable;

.field public static noticeMsg:Ljava/lang/String;

.field public static packageInfo:Landroid/content/pm/PackageInfo;

.field public static paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

.field public static publicKey:Ljava/lang/String;

.field public static qqKefuFrom:I

.field public static userInfo:Lcom/game/sdk/domain/UserInfo;

.field public static validateCode:Ljava/lang/String;

.field public static vertical:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    const-string v0, "-----BEGIN PUBLIC KEY-----MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEApsmOWfJecgy0Al55X8hGC/HMaZQ4WdVW99szOmE5tuVl342fmL/Vm/g2sJSc6AaowNnZrl1Rt9UrWnjVLhSLmpChMI2F+r5XAJL+Z3+xeKetejpia2OWslO+sT+YBWm2ilb+ZOdJ8Ms3dDBndvuArgNRPwbW8Mxh2LH4mFy2ivYjw7mXgWNzXIAlUT4i9AaoqmX/Osr7l6+VdXi6uLlRJIEZC+A7KPL35iXrBfPCgMn9QennaFvzLPDn7R4kCkgjo6rF6SdeMDq/eUFwr2bMwfjIO2QfGtF+nv3Yg6i2HKMwZde2N+vvjxxCdupYfHHVhbBOEwPreR9tvEiDGGDfERwURh7gL5L5adBa6AtqtaKRuwtWcnOAueTkVh7nP6Gt8J253mqhp2upu4pJaKfzQ1RvczAr93tmA1XkUQS3RkMEuqocay/u3iiSKwJob9Oh+fJC8CgKL4hOtIK1VRGuQPc7BBQtLWxmOoTZstLoC6oVS6BoQTk/hQ3STtyJqHuoqi5Cu/e2Fioi4bc0ViNJR67sFHlN5rQSdXWS4ouR6zQK4yAGVSCUlFznx2Jsu3slABijPUrNP3RkP91qvC3/7osOB5lbJsZNgygHcy3VylwlQ/EqXEnNrCwvCPSWgIJJ0KgScEttHd1FVEmntNJdMU6CKowXCLCWhtMt9AysiDkCAwEAAQ==-----END PUBLIC KEY-----"

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    .line 36
    sput-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 38
    const-string v0, "default"

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->channel:Ljava/lang/String;

    .line 39
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->channelInfo:Lcom/game/sdk/domain/ChannelInfo;

    .line 40
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    .line 41
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 42
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 43
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 57
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 59
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 67
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->vertical:I

    .line 73
    sput-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isChangeAccount:Z

    .line 75
    sput-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    .line 77
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->qqKefuFrom:I

    .line 79
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChannelInfo()Lcom/game/sdk/domain/ChannelInfo;
    .locals 3

    .prologue
    .line 142
    :try_start_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->channel:Ljava/lang/String;

    const-class v2, Lcom/game/sdk/domain/ChannelInfo;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChannelInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6e20\u9053\u4fe1\u606f\u89e3\u6790\u9519\u8bef->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v1

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/domain/GoagalInfo;->getPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method private static getPublicKey(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 151
    const-string v4, ""

    .line 152
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 154
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "mLine":Ljava/lang/String;
    if-nez v1, :cond_2

    move-object v2, v3

    .line 170
    .end local v1    # "mLine":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v4

    .line 157
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "mLine":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const-string v5, "----"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 162
    .end local v1    # "mLine":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_1

    .line 165
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 166
    :catch_1
    move-exception v5

    goto :goto_1

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END RSA PRIVATE KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "-----BEGIN PRIVATE KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END PRIVATE KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "-----BEGIN PUBLIC KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END PUBLIC KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 179
    return-object v0
.end method
