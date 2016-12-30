.class public Lcom/game/sdk/net/exception/NullResonseListenerException;
.super Ljava/lang/RuntimeException;
.source "NullResonseListenerException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "ResonseListener is a null pointer!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
