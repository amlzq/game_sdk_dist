.class public Lcom/game/sdk/domain/GoagalInfo;
.super Ljava/lang/Object;
.source "GoagalInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "6071Box"

.field public static agentid:Ljava/lang/String;

.field public static appid:Ljava/lang/String;

.field public static channel:Ljava/lang/String;

.field public static channelInfo:Lcom/game/sdk/domain/ChannelInfo;

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

.field public static gameid:Ljava/lang/String;

.field public static imei:Ljava/lang/String;

.field public static inItInfo:Lcom/game/sdk/domain/InItInfo;

.field public static isGetValidate:I

.field public static isLogin:Z

.field public static isQuick:I

.field public static loginType:I

.field public static loginlistener:Lcom/game/sdk/domain/OnLoginListener;

.field public static noticeMsg:Ljava/lang/String;

.field public static packageInfo:Landroid/content/pm/PackageInfo;

.field public static paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

.field public static publicKey:Ljava/lang/String;

.field public static userInfo:Lcom/game/sdk/domain/UserInfo;

.field public static validateCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    const-string v0, "-----BEGIN PUBLIC KEY-----MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEApsmOWfJecgy0Al55X8hGC/HMaZQ4WdVW99szOmE5tuVl342fmL/Vm/g2sJSc6AaowNnZrl1Rt9UrWnjVLhSLmpChMI2F+r5XAJL+Z3+xeKetejpia2OWslO+sT+YBWm2ilb+ZOdJ8Ms3dDBndvuArgNRPwbW8Mxh2LH4mFy2ivYjw7mXgWNzXIAlUT4i9AaoqmX/Osr7l6+VdXi6uLlRJIEZC+A7KPL35iXrBfPCgMn9QennaFvzLPDn7R4kCkgjo6rF6SdeMDq/eUFwr2bMwfjIO2QfGtF+nv3Yg6i2HKMwZde2N+vvjxxCdupYfHHVhbBOEwPreR9tvEiDGGDfERwURh7gL5L5adBa6AtqtaKRuwtWcnOAueTkVh7nP6Gt8J253mqhp2upu4pJaKfzQ1RvczAr93tmA1XkUQS3RkMEuqocay/u3iiSKwJob9Oh+fJC8CgKL4hOtIK1VRGuQPc7BBQtLWxmOoTZstLoC6oVS6BoQTk/hQ3STtyJqHuoqi5Cu/e2Fioi4bc0ViNJR67sFHlN5rQSdXWS4ouR6zQK4yAGVSCUlFznx2Jsu3slABijPUrNP3RkP91qvC3/7osOB5lbJsZNgygHcy3VylwlQ/EqXEnNrCwvCPSWgIJJ0KgScEttHd1FVEmntNJdMU6CKowXCLCWhtMt9AysiDkCAwEAAQ==-----END PUBLIC KEY-----"

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    .line 39
    sput-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 41
    const-string v0, "default"

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->channel:Ljava/lang/String;

    .line 42
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->channelInfo:Lcom/game/sdk/domain/ChannelInfo;

    .line 43
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    .line 44
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 45
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 46
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 59
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 61
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChannelInfo()Lcom/game/sdk/domain/ChannelInfo;
    .locals 3

    .prologue
    .line 128
    :try_start_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->channel:Ljava/lang/String;

    const-class v2, Lcom/game/sdk/domain/ChannelInfo;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ChannelInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 130
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

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
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

    .line 177
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/domain/GoagalInfo;->getPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method private static getPublicKey(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 137
    const-string v4, ""

    .line 138
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
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

    .line 156
    .end local v1    # "mLine":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v4

    .line 143
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "mLine":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const-string v5, "----"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
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

    .line 148
    .end local v1    # "mLine":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_1

    .line 151
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 152
    :catch_1
    move-exception v5

    goto :goto_1

    .line 148
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
    .line 165
    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END RSA PRIVATE KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "-----BEGIN PRIVATE KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END PRIVATE KEY-----"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 167
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

    .line 168
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method public static setGoagalInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v8, 0x0

    .line 70
    .local v8, "result1":Ljava/lang/String;
    const/4 v9, 0x0

    .line 71
    .local v9, "result2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 72
    .local v2, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 73
    .local v10, "sourceDir":Ljava/lang/String;
    const/4 v13, 0x0

    .line 75
    .local v13, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v13    # "zf":Ljava/util/zip/ZipFile;
    .local v14, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v15, "META-INF/gamechannel.json"

    invoke-virtual {v14, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 77
    .local v11, "ze1":Ljava/util/zip/ZipEntry;
    invoke-virtual {v14, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 78
    .local v5, "in1":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/game/sdk/utils/FileUtil;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 80
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u6e20\u9053->"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 82
    const-string v15, "META-INF/rsa_public_key.pem"

    invoke-virtual {v14, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12

    .line 83
    .local v12, "ze2":Ljava/util/zip/ZipEntry;
    invoke-virtual {v14, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 84
    .local v6, "in2":Ljava/io/InputStream;
    invoke-static {v6}, Lcom/game/sdk/utils/FileUtil;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 85
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u516c\u94a5->"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    if-eqz v14, :cond_5

    .line 99
    :try_start_2
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v13, v14

    .line 107
    .end local v5    # "in1":Ljava/io/InputStream;
    .end local v6    # "in2":Ljava/io/InputStream;
    .end local v11    # "ze1":Ljava/util/zip/ZipEntry;
    .end local v12    # "ze2":Ljava/util/zip/ZipEntry;
    .end local v14    # "zf":Ljava/util/zip/ZipFile;
    .restart local v13    # "zf":Ljava/util/zip/ZipFile;
    :cond_0
    :goto_0
    const-string v7, "gamechannel.json"

    .line 108
    .local v7, "name":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v8, v1, v7}, Lcom/game/sdk/utils/FileUtil;->writeInfoInSDCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1
    if-eqz v8, :cond_1

    .line 115
    sput-object v8, Lcom/game/sdk/domain/GoagalInfo;->channel:Ljava/lang/String;

    .line 118
    :cond_1
    if-eqz v9, :cond_2

    .line 119
    invoke-static {v9}, Lcom/game/sdk/domain/GoagalInfo;->getPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    .line 122
    :cond_2
    invoke-static {}, Lcom/game/sdk/domain/GoagalInfo;->getChannelInfo()Lcom/game/sdk/domain/ChannelInfo;

    move-result-object v15

    sput-object v15, Lcom/game/sdk/domain/GoagalInfo;->channelInfo:Lcom/game/sdk/domain/ChannelInfo;

    .line 123
    invoke-static/range {p0 .. p0}, Lcom/game/sdk/domain/GoagalInfo;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v15

    sput-object v15, Lcom/game/sdk/domain/GoagalInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 124
    return-void

    .line 86
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v13, :cond_3

    .line 89
    :try_start_3
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :cond_3
    :goto_3
    :try_start_4
    const-string v15, "apk\u4e2dgamechannel\u6216rsa_public_key\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    if-eqz v13, :cond_0

    .line 99
    :try_start_5
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v3

    .line 102
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 92
    .local v4, "e2":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 96
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 97
    :goto_4
    if-eqz v13, :cond_4

    .line 99
    :try_start_7
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 105
    :cond_4
    :goto_5
    throw v15

    .line 100
    :catch_3
    move-exception v3

    .line 102
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    .end local v13    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "in1":Ljava/io/InputStream;
    .restart local v6    # "in2":Ljava/io/InputStream;
    .restart local v11    # "ze1":Ljava/util/zip/ZipEntry;
    .restart local v12    # "ze2":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zf":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v3

    .line 102
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    move-object v13, v14

    .end local v14    # "zf":Ljava/util/zip/ZipFile;
    .restart local v13    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 111
    .end local v5    # "in1":Ljava/io/InputStream;
    .end local v6    # "in2":Ljava/io/InputStream;
    .end local v11    # "ze1":Ljava/util/zip/ZipEntry;
    .end local v12    # "ze2":Ljava/util/zip/ZipEntry;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7}, Lcom/game/sdk/utils/FileUtil;->readInfoInSDCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 96
    .end local v7    # "name":Ljava/lang/String;
    .end local v13    # "zf":Ljava/util/zip/ZipFile;
    .restart local v14    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "zf":Ljava/util/zip/ZipFile;
    .restart local v13    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 86
    .end local v13    # "zf":Ljava/util/zip/ZipFile;
    .restart local v14    # "zf":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v3

    move-object v13, v14

    .end local v14    # "zf":Ljava/util/zip/ZipFile;
    .restart local v13    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method
