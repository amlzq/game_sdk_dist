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
    .line 27
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

    .line 281
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/game/sdk/utils/AccountInfoUtil;->HEX:[C

    .line 282
    return-void

    .line 281
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 132
    :goto_1
    invoke-static {p0, v2}, Lcom/game/sdk/utils/AccountInfoUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    return-void

    .line 126
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 127
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v3, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {}, Lcom/game/sdk/utils/AccountInfoUtil;->makeBaseDir()V

    .line 212
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/utils/AccountInfoUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 216
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
    .line 285
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
    .line 296
    const-string v1, ""

    .line 297
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 299
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 301
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_1
    return-object v1
.end method

.method public static getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "userInfo":Lcom/game/sdk/domain/UserInfo;
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 177
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    :goto_0
    return-object v1

    .line 177
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 178
    .local v0, "uinfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v4, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    move-object v1, v0

    .line 180
    goto :goto_0
.end method

.method private static getUserInfosFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
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
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 58
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 66
    :goto_1
    if-eqz v3, :cond_0

    .line 67
    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    :cond_0
    invoke-static {p0, v3}, Lcom/game/sdk/utils/AccountInfoUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 71
    return-void

    .line 59
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 60
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v4, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v5, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static insertUserInfoFromPublic(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 33
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const/4 v2, 0x0

    .line 34
    .local v2, "isSame":Z
    const/4 v3, 0x0

    .line 35
    .local v3, "len":I
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_4

    .line 46
    .end local v1    # "i":I
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    if-nez v2, :cond_3

    .line 47
    :cond_1
    if-nez v4, :cond_2

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .restart local v4    # "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    :cond_3
    invoke-static {p0, v4}, Lcom/game/sdk/utils/AccountInfoUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    return-void

    .line 38
    .restart local v1    # "i":I
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 39
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v5, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_1

    .line 37
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const-string v2, ""

    .line 139
    .local v2, "userInfosStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfosFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/AccountInfoUtil;->readFromFile(Ljava/io/File;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "userInfosStr":Ljava/lang/String;
    .local v3, "userInfosStr":Ljava/lang/String;
    move-object v2, v3

    .line 143
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "userInfosStr":Ljava/lang/String;
    .restart local v2    # "userInfosStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    new-instance v4, Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/security/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/game/sdk/security/Encrypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    :try_start_1
    const-class v4, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 171
    :cond_0
    :goto_1
    return-object v1

    .line 168
    :catch_0
    move-exception v4

    goto :goto_1

    .line 141
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static makeBaseDir()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/utils/AccountInfoUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 293
    :cond_0
    return-void
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 259
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 260
    .local v0, "data":[B
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 261
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 262
    .local v1, "digest":[B
    invoke-static {v1}, Lcom/game/sdk/utils/AccountInfoUtil;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 266
    .end local v0    # "data":[B
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Md5 Fail"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 266
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
    .line 235
    const/4 v2, 0x0

    .line 237
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    const/16 v6, 0x2000

    :try_start_1
    new-array v0, v6, [B

    .line 240
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 241
    .local v5, "read":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 244
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 245
    .local v1, "data":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    if-eqz v3, :cond_0

    .line 250
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :cond_0
    :goto_1
    return-object v1

    .line 242
    .end local v1    # "data":[B
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .line 248
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 250
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 254
    :cond_2
    :goto_3
    throw v6

    .line 251
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

    .line 247
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
    .line 187
    .local p1, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    const-string v4, "["

    .line 188
    .local v4, "userInfosStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 189
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v4}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfosFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 201
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/game/sdk/utils/AccountInfoUtil;->writeToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_1
    return-void

    .line 190
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 192
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

    .line 193
    add-int/lit8 v5, v3, -0x1

    if-eq v2, v5, :cond_1

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
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
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 274
    :cond_0
    aget-byte v2, p0, v1

    .line 275
    .local v2, "v":I
    sget-object v3, Lcom/game/sdk/utils/AccountInfoUtil;->HEX:[C

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    sget-object v3, Lcom/game/sdk/utils/AccountInfoUtil;->HEX:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static updateUsersInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 77
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-nez v5, :cond_0

    .line 78
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 84
    .local v3, "len":I
    const/4 v2, 0x0

    .line 86
    .local v2, "isAdd":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 115
    if-nez v2, :cond_1

    .line 116
    const/4 v6, 0x0

    invoke-interface {v5, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    :cond_1
    invoke-static {p0, v5}, Lcom/game/sdk/utils/AccountInfoUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 120
    return-void

    .line 87
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 89
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v7, p1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 94
    .local v4, "nUser":Lcom/game/sdk/domain/UserInfo;
    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    iput-object v6, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 95
    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    iput-object v6, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 96
    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    iput-object v6, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 98
    if-eqz v5, :cond_4

    .line 99
    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    .end local v4    # "nUser":Lcom/game/sdk/domain/UserInfo;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_4
    iget-object v6, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    iget-object v7, p1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 107
    if-eqz v5, :cond_3

    .line 108
    iget-object v6, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v6, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 109
    invoke-interface {v5, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
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
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "fou":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .local v1, "fou":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    if-eqz v1, :cond_0

    .line 227
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 224
    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .line 225
    :goto_1
    if-eqz v0, :cond_1

    .line 227
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    :cond_1
    :goto_2
    throw v2

    .line 228
    :catch_0
    move-exception v3

    goto :goto_2

    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .restart local v1    # "fou":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 224
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
