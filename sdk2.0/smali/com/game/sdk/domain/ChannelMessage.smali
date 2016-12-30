.class public Lcom/game/sdk/domain/ChannelMessage;
.super Ljava/lang/Object;
.source "ChannelMessage.java"


# instance fields
.field public channelDes:Ljava/lang/String;

.field public channelId:I

.field public channelMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "channelMsg"    # Ljava/lang/String;
    .param p3, "channelDes"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/game/sdk/domain/ChannelMessage;->channelId:I

    .line 23
    iput-object p2, p0, Lcom/game/sdk/domain/ChannelMessage;->channelMsg:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/game/sdk/domain/ChannelMessage;->channelDes:Ljava/lang/String;

    .line 25
    return-void
.end method
