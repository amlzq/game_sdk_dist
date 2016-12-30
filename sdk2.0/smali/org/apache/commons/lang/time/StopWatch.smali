.class public Lorg/apache/commons/lang/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# static fields
.field private static final STATE_RUNNING:I = 0x1

.field private static final STATE_SPLIT:I = 0xb

.field private static final STATE_STOPPED:I = 0x2

.field private static final STATE_SUSPENDED:I = 0x3

.field private static final STATE_UNSPLIT:I = 0xa

.field private static final STATE_UNSTARTED:I


# instance fields
.field private runningState:I

.field private splitState:I

.field private startTime:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 76
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 80
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 87
    return-void
.end method


# virtual methods
.method public getSplitTime()J
    .locals 4

    .prologue
    .line 233
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 211
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    .line 217
    :goto_0
    return-wide v0

    .line 213
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-nez v0, :cond_2

    .line 214
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 216
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 219
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occured. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 130
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 131
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 132
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 133
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 197
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 199
    return-void
.end method

.method public split()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 149
    const/16 v0, 0xb

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 150
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 106
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 121
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 181
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 182
    return-void
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 165
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 166
    return-void
.end method
