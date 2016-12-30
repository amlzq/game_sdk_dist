.class public Lcom/game/sdk/utils/AccountInfoUtil;
.super Ljava/lang/Object;
.source "AccountInfoUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final HEX:[C

.field private static final PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/6071GameBox2SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/utils/AccountInfoUtil;->PATH:Ljava/lang/String;

    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/game/sdk/utils/AccountInfoUtil;->HEX:[C

    .line 208
    return-void

    .line 207
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 53
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 60
    :goto_1
    invoke-static {p0, v2}, Lcom/game/sdk/utils/AccountInfoUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 61
    return-void

    .line 54
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 55
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v3, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, Lcom/game/sdk/utils/AccountInfoUtil;->makeBaseDir()V

    .line 138
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/utils/AccountInfoUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getJsonStr(Lcom/game/sdk/domain/UserInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"username\" :\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"password\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string v1, ""

    .line 223
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 225
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 227
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_1
    return-object v1
.end method

.method public static getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "userInfo":Lcom/game/sdk/domain/UserInfo;
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    :goto_0
    return-object v1

    .line 103
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 104
    .local v0, "uinfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v4, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    move-object v1, v0

    .line 106
    goto :goto_0
.end method

.method private static getUserInfosFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "accounts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/AccountInfoUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/AccountInfoUtil;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 34
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 35
    .local v3, "len":I
    const/4 v2, 0x0

    .line 36
    .local v2, "isSame":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 45
    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 46
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    invoke-static {p0, v4}, Lcom/game/sdk/utils/AccountInfoUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    return-void

    .line 37
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 38
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v5, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_1

    .line 36
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const-string v6, ""

    .line 67
    .local v6, "userInfosStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfosFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "file":Ljava/io/File;
    new-instance v7, Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/AccountInfoUtil;->readFromFile(Ljava/io/File;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "userInfosStr":Ljava/lang/String;
    .local v7, "userInfosStr":Ljava/lang/String;
    move-object v6, v7

    .line 71
    .end local v0    # "file":Ljava/io/File;
    .end local v7    # "userInfosStr":Ljava/lang/String;
    .restart local v6    # "userInfosStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 72
    new-instance v8, Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lcom/game/sdk/security/Encrypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_1

    .line 97
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_2
    return-object v5

    .line 77
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 78
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 80
    .local v4, "userInfo":Lcom/game/sdk/domain/UserInfo;
    const-string v8, "accountType"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_2

    const-string v8, "accountType"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    :goto_3
    iput v8, v4, Lcom/game/sdk/domain/UserInfo;->accountType:I

    .line 81
    const-string v8, "user_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v8, "user_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    iput-object v8, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 82
    const-string v8, "name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    iput-object v8, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 83
    const-string v8, "password"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v8, "password"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    iput-object v8, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 84
    const-string v8, "device"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_6

    const-string v8, "device"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    :goto_7
    iput v8, v4, Lcom/game/sdk/domain/UserInfo;->device:I

    .line 85
    const-string v8, "is_vali_mobile"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_7

    const-string v8, "is_vali_mobile"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    :goto_8
    iput v8, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 86
    const-string v8, "isrpwd"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_8

    const-string v8, "isrpwd"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    :goto_9
    iput v8, v4, Lcom/game/sdk/domain/UserInfo;->isrpwd:I

    .line 87
    const-string v8, "logintime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-lez v8, :cond_9

    const-string v8, "logintime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    :goto_a
    iput-wide v10, v4, Lcom/game/sdk/domain/UserInfo;->logintime:J

    .line 88
    const-string v8, "sex"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_a

    const-string v8, "sex"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    :goto_b
    iput v8, v4, Lcom/game/sdk/domain/UserInfo;->sex:I

    .line 89
    const-string v8, "sign"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v8, "sign"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_c
    iput-object v8, v4, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    .line 91
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 80
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 81
    :cond_3
    const-string v8, ""

    goto/16 :goto_4

    .line 82
    :cond_4
    const-string v8, ""

    goto/16 :goto_5

    .line 83
    :cond_5
    const-string v8, ""

    goto :goto_6

    :cond_6
    move v8, v9

    .line 84
    goto :goto_7

    :cond_7
    move v8, v9

    .line 85
    goto :goto_8

    :cond_8
    move v8, v9

    .line 86
    goto :goto_9

    .line 87
    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_a

    :cond_a
    move v8, v9

    .line 88
    goto :goto_b

    .line 89
    :cond_b
    const-string v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 94
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "userInfo":Lcom/game/sdk/domain/UserInfo;
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 69
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method private static makeBaseDir()V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/utils/AccountInfoUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 219
    :cond_0
    return-void
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 186
    .local v0, "data":[B
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 187
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 188
    .local v1, "digest":[B
    invoke-static {v1}, Lcom/game/sdk/utils/AccountInfoUtil;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 192
    .end local v0    # "data":[B
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Md5 Fail"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 192
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static readFromFile(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v2, 0x0

    .line 163
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    const/16 v6, 0x2000

    :try_start_1
    new-array v0, v6, [B

    .line 166
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 167
    .local v5, "read":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 170
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 171
    .local v1, "data":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-eqz v3, :cond_0

    .line 176
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :cond_0
    :goto_1
    return-object v1

    .line 168
    .end local v1    # "data":[B
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .line 174
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 176
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 180
    :cond_2
    :goto_3
    throw v6

    .line 177
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "data":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "read":I
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "read":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 173
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public static saveUserInfos(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const-string v4, "["

    .line 114
    .local v4, "userInfosStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 115
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v4}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfosFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 127
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/game/sdk/utils/AccountInfoUtil;->writeToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    return-void

    .line 116
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 118
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    add-int/lit8 v5, v3, -0x1

    if-eq v2, v5, :cond_1

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 200
    :cond_0
    aget-byte v2, p0, v1

    .line 201
    .local v2, "v":I
    sget-object v3, Lcom/game/sdk/utils/AccountInfoUtil;->HEX:[C

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    sget-object v3, Lcom/game/sdk/utils/AccountInfoUtil;->HEX:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static writeToFile(Ljava/io/File;[B)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "fou":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .local v1, "fou":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    if-eqz v1, :cond_0

    .line 153
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 150
    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .line 151
    :goto_1
    if-eqz v0, :cond_1

    .line 153
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    :cond_1
    :goto_2
    throw v2

    .line 154
    :catch_0
    move-exception v3

    goto :goto_2

    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .restart local v1    # "fou":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 150
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
