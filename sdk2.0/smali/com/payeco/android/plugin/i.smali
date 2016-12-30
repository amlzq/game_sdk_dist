.class public final Lcom/payeco/android/plugin/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Lorg/json/JSONObject;

.field public static b:Lorg/json/JSONObject;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static g:Lcom/payeco/android/plugin/i;


# instance fields
.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;

    sput-object v0, Lcom/payeco/android/plugin/i;->d:Ljava/lang/String;

    sput-object v0, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payeco/android/plugin/i;->f:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/payeco/android/plugin/i;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/i;->g:Lcom/payeco/android/plugin/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/payeco/android/plugin/i;

    invoke-direct {v0}, Lcom/payeco/android/plugin/i;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/i;->g:Lcom/payeco/android/plugin/i;

    :cond_0
    sget-object v0, Lcom/payeco/android/plugin/i;->g:Lcom/payeco/android/plugin/i;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/payeco/android/plugin/i;->a()Lcom/payeco/android/plugin/i;

    const/4 v0, 0x0

    sput-object v0, Lcom/payeco/android/plugin/i;->a:Lorg/json/JSONObject;

    const/4 v0, 0x0

    sput-object v0, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payecoVoice.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a(Ljava/lang/String;)Lcom/payeco/android/plugin/e/a;

    invoke-static {}, Lcom/payeco/android/plugin/e/a;->d()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/payeco/android/plugin/i;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/payeco/android/plugin/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "payeco_plugin_keys.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payeco/android/plugin/util/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1}, Lcom/payeco/android/plugin/util/m;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/payeco/android/plugin/b/g;->b([B[B)[B

    move-result-object v1

    new-instance v2, Lcom/payeco/android/plugin/b/e;

    invoke-direct {v2}, Lcom/payeco/android/plugin/b/e;-><init>()V

    invoke-static {v1}, Lcom/payeco/android/plugin/b/e;->a([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "payeco_plugin_key_md5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/payeco/android/plugin/util/a;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/payeco/android/plugin/b/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/payeco/android/plugin/b/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\ufeff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/payeco/android/plugin/i;->a:Lorg/json/JSONObject;

    sget-object v0, Lcom/payeco/android/plugin/i;->g:Lcom/payeco/android/plugin/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    sget-object v0, Lcom/payeco/android/plugin/i;->a:Lorg/json/JSONObject;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/payeco/android/plugin/i;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payeco_plugin_config.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/payeco/android/plugin/i;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/payeco/android/plugin/i;->b:Lorg/json/JSONObject;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
