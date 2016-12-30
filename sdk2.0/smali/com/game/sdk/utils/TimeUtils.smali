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
    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game/sdk/utils/TimeUtils;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game/sdk/utils/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getCurrentTimeInLong()J
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTimeInString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
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
    .line 65
    invoke-static {}, Lcom/game/sdk/utils/TimeUtils;->getCurrentTimeInLong()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/game/sdk/utils/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J

    .prologue
    .line 38
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
    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
