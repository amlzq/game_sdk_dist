.class public final Lcom/payeco/android/plugin/e/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field private static d:Landroid/media/MediaRecorder;

.field private static e:Landroid/media/MediaPlayer;

.field private static f:Lcom/payeco/android/plugin/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/payeco/android/plugin/e/a;
    .locals 1

    sput-object p0, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/payeco/android/plugin/e/a;->f:Lcom/payeco/android/plugin/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/payeco/android/plugin/e/a;

    invoke-direct {v0}, Lcom/payeco/android/plugin/e/a;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/e/a;->f:Lcom/payeco/android/plugin/e/a;

    :cond_0
    sget-object v0, Lcom/payeco/android/plugin/e/a;->f:Lcom/payeco/android/plugin/e/a;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/payeco/android/plugin/e/a;->b:Z

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u505c\u6b62\u5f55\u97f3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6ca1\u6709\u5f55\u97f3\uff0c\u4e0d\u80fd\u505c\u6b62\u5f55\u97f3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u505c\u6b62\u5f55\u97f3\u51fa\u9519"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "errCode"

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "errMsg"

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    array-length v0, p0

    if-le v0, v3, :cond_0

    const-string v0, "fileName"

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u505c\u6b62\u64ad\u653e"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6ca1\u6709\u64ad\u653e\uff0c\u4e0d\u80fd\u505c\u6b62\u64ad\u653e"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u505c\u6b62\u64ad\u653e\u51fa\u9519"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/payeco/android/plugin/e/a;->a()Ljava/lang/String;

    invoke-static {}, Lcom/payeco/android/plugin/e/a;->c()Ljava/lang/String;

    sput-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    sput-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    sput-object v0, Lcom/payeco/android/plugin/e/a;->f:Lcom/payeco/android/plugin/e/a;

    sput-object v0, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/payeco/android/plugin/e/a;->b:Z

    sput-boolean v1, Lcom/payeco/android/plugin/e/a;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/payeco/android/plugin/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "\u624b\u673a\u6ca1\u7528SD\u5361,\u8bf7\u63d2\u5165\u540e\u518d\u8bd5\uff01"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "\u6b63\u5728\u64ad\u653e\uff0c\u4e0d\u80fd\u5f55\u97f3"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->b:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "\u6b63\u5728\u5f55\u97f3\uff0c\u4e0d\u80fd\u5f00\u59cb\u5f55\u97f3"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    sget-object v1, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payeco/android/plugin/e/b;

    invoke-direct {v1, p0, p1}, Lcom/payeco/android/plugin/e/b;-><init>(Lcom/payeco/android/plugin/e/a;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/payeco/android/plugin/e/a;->b:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5f00\u59cb\u5f55\u97f3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/payeco/android/plugin/e/a;->b:Z

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "\u5f55\u97f3\u51fa\u9519"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u6b63\u5728\u5f55\u97f3\uff0c\u4e0d\u80fd\u64ad\u653e"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u6b63\u5728\u64ad\u653e\uff0c\u4e0d\u80fd\u7ee7\u7eed\u64ad\u653e"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    :try_start_0
    sget-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/payeco/android/plugin/e/a;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/payeco/android/plugin/e/c;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/e/c;-><init>(Lcom/payeco/android/plugin/e/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5f00\u59cb\u64ad\u653e"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/payeco/android/plugin/e/a;->c:Z

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u64ad\u653e\u51fa\u9519"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
