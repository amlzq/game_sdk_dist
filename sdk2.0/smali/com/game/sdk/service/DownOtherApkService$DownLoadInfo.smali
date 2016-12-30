.class public Lcom/game/sdk/service/DownOtherApkService$DownLoadInfo;
.super Ljava/lang/Object;
.source "DownOtherApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/service/DownOtherApkService;
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p3, p0, Lcom/game/sdk/service/DownOtherApkService$DownLoadInfo;->downloadSize:J

    .line 53
    iput-wide p1, p0, Lcom/game/sdk/service/DownOtherApkService$DownLoadInfo;->fileSize:J

    .line 54
    return-void
.end method
