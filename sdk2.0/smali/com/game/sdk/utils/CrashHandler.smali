.class public Lcom/game/sdk/utils/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final CRASH_REPORTER_EXTENSION:Ljava/lang/String; = ".cr"

.field private static INSTANCE:Lcom/game/sdk/utils/CrashHandler; = null

.field private static final STACK_TRACE:Ljava/lang/String; = "STACK_TRACE"

.field public static final TAG:Ljava/lang/String; = "CrashHandler"

.field private static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static viewname:Ljava/lang/String;


# instance fields
.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mDeviceCrashInfo:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/game/sdk/utils/CrashHandler;

    invoke-direct {v0}, Lcom/game/sdk/utils/CrashHandler;-><init>()V

    sput-object v0, Lcom/game/sdk/utils/CrashHandler;->INSTANCE:Lcom/game/sdk/utils/CrashHandler;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/utils/CrashHandler;->infos:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/utils/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/utils/CrashHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game/sdk/utils/CrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 276
    .local v0, "filesDir":Ljava/io/File;
    new-instance v1, Lcom/game/sdk/utils/CrashHandler$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/utils/CrashHandler$2;-><init>(Lcom/game/sdk/utils/CrashHandler;)V

    .line 285
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/game/sdk/utils/CrashHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/game/sdk/utils/CrashHandler;->INSTANCE:Lcom/game/sdk/utils/CrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 142
    :cond_0
    new-instance v0, Lcom/game/sdk/utils/CrashHandler$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/utils/CrashHandler$1;-><init>(Lcom/game/sdk/utils/CrashHandler;)V

    .line 149
    invoke-virtual {v0}, Lcom/game/sdk/utils/CrashHandler$1;->start()V

    .line 150
    const-string v0, "CrashHandler"

    const-string v1, "error info"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postReport(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 292
    return-void
.end method

.method private saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 11
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 216
    .local v3, "info":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 219
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 223
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 231
    iget-object v9, p0, Lcom/game/sdk/utils/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v10, "STACK_TRACE"

    invoke-virtual {v9, v10, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 235
    .local v6, "timestamp":J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "crash-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".cr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "fileName":Ljava/lang/String;
    iget-object v9, p0, Lcom/game/sdk/utils/CrashHandler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 238
    .local v8, "trace":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/game/sdk/utils/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v10, ""

    invoke-virtual {v9, v8, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 240
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "timestamp":J
    .end local v8    # "trace":Ljava/io/FileOutputStream;
    :goto_1
    return-object v2

    .line 224
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 242
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "CrashHandler"

    const-string v10, "an error occured while writing report file..."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private sendCrashReportsToServer(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/game/sdk/utils/CrashHandler;->getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "crFiles":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 256
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 257
    .local v3, "sortedFiles":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 259
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 265
    .end local v3    # "sortedFiles":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 259
    .restart local v3    # "sortedFiles":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v0, "cr":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/game/sdk/utils/CrashHandler;->postReport(Ljava/io/File;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public collectCrashDeviceInfo(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 176
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 177
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 180
    iget-object v6, p0, Lcom/game/sdk/utils/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v7, "versionName"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "not set"

    :goto_0
    invoke-virtual {v6, v7, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v5, p0, Lcom/game/sdk/utils/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v6, "versionCode"

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    const-class v5, Landroid/os/Build;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 192
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_2

    .line 206
    return-void

    .line 180
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "CrashHandler"

    const-string v6, "Error while collect package info"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 192
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_2
    aget-object v1, v2, v5

    .line 197
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    iget-object v7, p0, Lcom/game/sdk/utils/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 202
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "CrashHandler"

    const-string v8, "Error while collect crash info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewname"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/game/sdk/utils/CrashHandler;->mContext:Landroid/content/Context;

    .line 77
    sput-object p2, Lcom/game/sdk/utils/CrashHandler;->viewname:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/utils/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 82
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 83
    return-void
.end method

.method public sendPreviousReportsToServer()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/game/sdk/utils/CrashHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/game/sdk/utils/CrashHandler;->sendCrashReportsToServer(Landroid/content/Context;)V

    .line 299
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/game/sdk/utils/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/utils/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/game/sdk/utils/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 129
    :goto_0
    return-void

    .line 95
    :cond_0
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CrashHandler"

    const-string v2, "error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
