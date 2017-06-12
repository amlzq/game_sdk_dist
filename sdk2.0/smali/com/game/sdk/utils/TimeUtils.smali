.class public Lcom/game/sdk/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

.field public static final DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game/sdk/utils/TimeUtils;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game/sdk/utils/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getCurrentTimeInLong()J
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTimeInString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/game/sdk/utils/TimeUtils;->getCurrentTimeInLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/game/sdk/utils/TimeUtils;->getTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimeInString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 66
    invoke-static {}, Lcom/game/sdk/utils/TimeUtils;->getCurrentTimeInLong()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/game/sdk/utils/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 3
    .param p0, "dateTimeStr"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 70
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 72
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-static {p0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J

    .prologue
    .line 39
    sget-object v0, Lcom/game/sdk/utils/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/game/sdk/utils/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J
    .param p2, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
