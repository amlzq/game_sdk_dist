.class public Lcom/game/sdk/utils/CheckUtil;
.super Ljava/lang/Object;
.source "CheckUtil.java"


# static fields
.field public static final NETTYPE_NO:I = 0x0

.field public static final NETTYPE_TYPE_MOBILE:I = 0x2

.field public static final NETTYPE_WIFI:I = 0x1

.field public static packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAliPayInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v3, "alipays://platformapi/startApp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 103
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 122
    move-object v0, p0

    .line 123
    .local v0, "tmp":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    const-string v0, "\u6682\u65e0\u63cf\u8ff0"

    .line 126
    :cond_1
    return-object v0
.end method

.method public static checkStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 130
    move-object v0, p0

    .line 131
    .local v0, "tmp":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    move-object v0, p1

    .line 134
    :cond_1
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v3, 0x0

    .line 163
    .local v3, "netType":I
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 164
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 165
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v5, :cond_0

    move v4, v3

    .line 177
    .end local v3    # "netType":I
    .local v4, "netType":I
    :goto_0
    return v4

    .line 168
    .end local v4    # "netType":I
    .restart local v3    # "netType":I
    :cond_0
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 169
    .local v2, "nType":I
    if-nez v2, :cond_2

    .line 170
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "extraInfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    const/4 v3, 0x2

    .end local v1    # "extraInfo":Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v3

    .line 177
    .end local v3    # "netType":I
    .restart local v4    # "netType":I
    goto :goto_0

    .line 174
    .end local v4    # "netType":I
    .restart local v3    # "netType":I
    :cond_2
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 175
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static is404NotFound(Ljava/lang/String;)Z
    .locals 6
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 110
    .local v3, "result":Z
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 112
    .local v1, "httpURLConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 113
    .local v2, "responseCode":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_0

    const/4 v3, 0x1

    .line 118
    .end local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return v3

    .line 114
    .restart local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "responseCode":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 115
    .end local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 40
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 41
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 42
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 199
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    const/4 v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isInstallGameBox(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    const-string v3, "gamebox://?act=MainActivity"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 210
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isInternetAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "domin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 186
    .local v1, "ipAddr":Ljava/net/InetAddress;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    .end local v1    # "ipAddr":Ljava/net/InetAddress;
    :goto_0
    return v2

    .line 186
    .restart local v1    # "ipAddr":Ljava/net/InetAddress;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "ipAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 148
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isPhone(Ljava/lang/String;)Z
    .locals 3
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v2, "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 47
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isQQAvilible(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 72
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 66
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "pn":Ljava/lang/String;
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const/4 v2, 0x1

    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isQQClientAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 84
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 78
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "pn":Ljava/lang/String;
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    const/4 v2, 0x1

    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isWIFIConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 219
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 220
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 221
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWeiboAvilible(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 96
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 90
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "pn":Ljava/lang/String;
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    const/4 v2, 0x1

    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isWeixinAvilible(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 60
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 54
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "pn":Ljava/lang/String;
    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const/4 v2, 0x1

    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setPackageNames(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v3, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 35
    :cond_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 33
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v3, Lcom/game/sdk/utils/CheckUtil;->packageNames:Ljava/util/List;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
