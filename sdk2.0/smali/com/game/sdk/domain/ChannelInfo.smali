.class public Lcom/game/sdk/domain/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# instance fields
.field public agent_id:Ljava/lang/String;

.field public author:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "default"

    iput-object v0, p0, Lcom/game/sdk/domain/ChannelInfo;->agent_id:Ljava/lang/String;

    .line 6
    return-void
.end method
