.class public Lcom/game/sdk/domain/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# instance fields
.field public downUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "down_url"
    .end annotation
.end field

.field public isUpd:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_upd"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
