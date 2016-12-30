.class public Lcom/game/sdk/service/DownGameBoxService$DownLoadInfo;
.super Ljava/lang/Object;
.source "DownGameBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/service/DownGameBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownLoadInfo"
.end annotation


# instance fields
.field public downloadSize:J

.field public fileSize:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "fileSize"    # J
    .param p3, "downloadSize"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p3, p0, Lcom/game/sdk/service/DownGameBoxService$DownLoadInfo;->downloadSize:J

    .line 54
    iput-wide p1, p0, Lcom/game/sdk/service/DownGameBoxService$DownLoadInfo;->fileSize:J

    .line 55
    return-void
.end method
