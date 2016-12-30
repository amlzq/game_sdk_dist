.class public Lcom/game/sdk/domain/RequestResultMsg;
.super Ljava/lang/Object;
.source "RequestResultMsg.java"


# instance fields
.field public code:I

.field public isSuccess:Z

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/domain/RequestResultMsg;->isSuccess:Z

    .line 10
    iput p1, p0, Lcom/game/sdk/domain/RequestResultMsg;->code:I

    .line 11
    iput-object p2, p0, Lcom/game/sdk/domain/RequestResultMsg;->msg:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/game/sdk/domain/RequestResultMsg;->isSuccess:Z

    .line 13
    return-void
.end method
