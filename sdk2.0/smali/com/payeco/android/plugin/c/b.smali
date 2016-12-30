.class public final Lcom/payeco/android/plugin/c/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/util/HashMap;

.field private static final c:Lcom/payeco/android/plugin/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "payeco"

    sput-object v0, Lcom/payeco/android/plugin/c/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/c/b;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/payeco/android/plugin/c/c;

    invoke-direct {v0}, Lcom/payeco/android/plugin/c/c;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/c/b;->c:Lcom/payeco/android/plugin/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/c/b;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/payeco/android/plugin/c/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/c/b;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/payeco/android/plugin/c/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    return-void
.end method
