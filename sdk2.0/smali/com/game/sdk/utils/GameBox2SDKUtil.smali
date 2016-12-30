.class public Lcom/game/sdk/utils/GameBox2SDKUtil;
.super Ljava/lang/Object;
.source "GameBox2SDKUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final HEX:[C

.field private static final PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GameBox2SDKUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
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

    sput-object v0, Lcom/game/sdk/utils/GameBox2SDKUtil;->PATH:Ljava/lang/String;

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/game/sdk/utils/GameBox2SDKUtil;->HEX:[C

    .line 239
    return-void

    .line 236
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFiles(Ljava/lang/String;)V
    .locals 2
    .param p0, "workspaceRootPath"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {v0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->deleteFile(Ljava/io/File;)V

    .line 54
    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 62
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 63
    return-void

    .line 59
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/game/sdk/utils/GameBox2SDKUtil;->deleteFile(Ljava/io/File;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteUserInfo(Landroid/content/Context;Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 98
    :goto_1
    invoke-static {p0, v2}, Lcom/game/sdk/utils/GameBox2SDKUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 99
    return-void

    .line 92
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    .line 93
    .local v0, "_userInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget-object v3, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 91
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static exchangeUserInfo(Lcom/game/sdk/domain/UserInfo;I)Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .locals 2
    .param p0, "userInfo"    # Lcom/game/sdk/domain/UserInfo;
    .param p1, "type"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    invoke-direct {v0}, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;-><init>()V

    .line 31
    .local v0, "g2sUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget-object v1, p0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    .line 34
    iput p1, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    .line 35
    return-object v0
.end method

.method public static exchangeUserInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    invoke-direct {v0}, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;-><init>()V

    .line 41
    .local v0, "g2sUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iput-object p0, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    .line 42
    iput-object p0, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    .line 43
    iput-object p1, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    .line 44
    iput p2, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    .line 45
    return-object v0
.end method

.method private static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Lcom/game/sdk/utils/GameBox2SDKUtil;->makeBaseDir()V

    .line 164
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/utils/GameBox2SDKUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 168
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

.method private static getJsonStr(Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "userInfo"    # Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"phone\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"name\" :\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string v1, "\"pwd\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"type\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const-string v1, ""

    .line 255
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 257
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 259
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 261
    const-string v3, "android_id"

    .line 260
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_1
    return-object v1
.end method

.method private static getUserInfosFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "users"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/GameBox2SDKUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/GameBox2SDKUtil;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static insertUserInfo(Landroid/content/Context;Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 68
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 69
    .local v3, "len":I
    const/4 v2, 0x0

    .line 70
    .local v2, "isSame":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 83
    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 84
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    invoke-static {p0, v4}, Lcom/game/sdk/utils/GameBox2SDKUtil;->saveUserInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 87
    return-void

    .line 71
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    .line 72
    .local v0, "_userInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    iget v6, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v5, v6, :cond_4

    iget-object v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    iget-object v6, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    .line 74
    iget-object v6, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    :cond_3
    iget-object v5, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    iput-object v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    .line 76
    iget-object v5, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    .line 77
    iget-object v5, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    .line 78
    iget v5, p1, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    iput v5, v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    .line 79
    const/4 v2, 0x1

    .line 80
    goto :goto_1

    .line 70
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const-string v6, ""

    .line 108
    .local v6, "userInfosStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->getUserInfosFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "file":Ljava/io/File;
    new-instance v7, Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->readFromFile(Ljava/io/File;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "userInfosStr":Ljava/lang/String;
    .local v7, "userInfosStr":Ljava/lang/String;
    move-object v6, v7

    .line 112
    .end local v0    # "file":Ljava/io/File;
    .end local v7    # "userInfosStr":Ljava/lang/String;
    .restart local v6    # "userInfosStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 113
    new-instance v8, Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lcom/game/sdk/utils/Encrypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_1

    .line 128
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_2
    return-object v5

    .line 117
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 118
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;-><init>()V

    .line 119
    .local v4, "userInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    const-string v8, "phone"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->phone:Ljava/lang/String;

    .line 120
    const-string v8, "name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    .line 121
    const-string v8, "pwd"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    .line 122
    const-string v8, "type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    .line 123
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "userInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 110
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method private static makeBaseDir()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/utils/GameBox2SDKUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 251
    :cond_0
    return-void
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 213
    .local v0, "data":[B
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 214
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 215
    .local v1, "digest":[B
    invoke-static {v1}, Lcom/game/sdk/utils/GameBox2SDKUtil;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 220
    .end local v0    # "data":[B
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 216
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Md5 Fail"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 220
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
    .line 187
    const/4 v2, 0x0

    .line 189
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    const/16 v6, 0x2000

    :try_start_1
    new-array v0, v6, [B

    .line 192
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 193
    .local v5, "read":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 196
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 197
    .local v1, "data":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v3, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    :cond_0
    :goto_1
    return-object v1

    .line 194
    .end local v1    # "data":[B
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .line 200
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 206
    :cond_2
    :goto_3
    throw v6

    .line 203
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

    .line 199
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
            "Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const-string v4, "["

    .line 133
    .local v4, "userInfosStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 134
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4}, Lcom/game/sdk/utils/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {p0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->getUserInfosFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 145
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/game/sdk/utils/GameBox2SDKUtil;->writeToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    return-void

    .line 135
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    .line 136
    .local v0, "_userInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->getJsonStr(Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    add-int/lit8 v5, v3, -0x1

    if-eq v2, v5, :cond_1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "_userInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 229
    :cond_0
    aget-byte v2, p0, v1

    .line 230
    .local v2, "v":I
    sget-object v3, Lcom/game/sdk/utils/GameBox2SDKUtil;->HEX:[C

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    sget-object v3, Lcom/game/sdk/utils/GameBox2SDKUtil;->HEX:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
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
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "fou":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .local v1, "fou":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    if-eqz v1, :cond_0

    .line 179
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 176
    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .line 177
    :goto_1
    if-eqz v0, :cond_1

    .line 179
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 183
    :cond_1
    :goto_2
    throw v2

    .line 180
    :catch_0
    move-exception v3

    goto :goto_2

    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .restart local v1    # "fou":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 176
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
