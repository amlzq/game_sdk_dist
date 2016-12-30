.class public Lcom/game/sdk/domain/LoginErrorMsg;
.super Ljava/lang/Object;
.source "LoginErrorMsg.java"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/game/sdk/domain/LoginErrorMsg;->code:I

    .line 15
    iput-object p2, p0, Lcom/game/sdk/domain/LoginErrorMsg;->msg:Ljava/lang/String;

    .line 16
    return-void
.end method
